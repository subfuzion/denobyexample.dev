#!/usr/bin/env bash
# Dependencies: sed
# Usage: builddocs.sh PATH [-r]

die() {
  printf "Error: $@\n"
  printf "Usage: $(basename $0) PATH [-r]\n"
  exit 1
}

# return the file name (including extension) without any path components
basename() {
  printf "$1" | sed 's/^.*\///'
}

# returns name without an extension (must already be a basename)
dropext() {
  printf "$1" | sed 's/\.[^.]*$//'
}

strip_trailing_slashes() {
  printf "$1" | sed 's/[/]*$//'
}

lint() {
  local source="$1"
  local output=$(deno fmt -q "$source" 2>&1)
  if ! [ -z "$output" ]; then
    printf "$output\n"
    die "format errors must be fixed."
  fi
}

# run and capture output
run() {
  local source="$1"
  local out="$2"
  NO_COLOR=1 deno run "$source" > "$out"
}

write() {
  f_="$1"; shift
  printf "$@\n" >> "$f_"
}

# append file to target using code template
embed() {
  local target="$1"
  local source="$2"
  local out="$3"

  write "$target" '<!-- markdownlint-disable -->'
  write "$target" '{{< tabpane >}}'
  write "$target" '  {{< tab header='"$source"' lang="text" lang="js" >}}'

  cat "$source" >> "$target"

  write "$target" '  {{< /tab >}}'
  write "$target" '  {{< tab header="Output" lang="text" lang="shell" >}}'

  cat "$out" >> "$target"

  write "$target" '  {{< /tab >}}'
  write "$target" '{{< /tabpane >}}'
  write "$target" '<!-- markdownlint-restore -->'
}

# verify name looks like a template file
# verify file exists
# then return name without extension
check_template_base() {
  local source="$1"
  base="$(dropext $(basename $source))"
  if ! [ "$source" = "${base}.t" ]; then
    printf "file must be a template with a '.t' extension"
    return 1
  fi
  if ! [ -e "${base}.t" ]; then
    printf "can't read file: ${base}.t"
    return 1
  fi
  printf "$base"
}

process_source() {
  local target="$1"
  local source="$2"
  local out="$(dropext $source).sh"

  lint "$source"
  run  "$source" "$out"
  embed "$target" "$source" "$out"
}

process_template() {
  local template="$1"
  local target="$2"

  printf "" > "$target"

  while IFS= read -r line
  do
    if grep -q "^@" <<< "$line"; then
      local source="${line:1}"
      [[ ! -e "$source" ]] && die "$template: source not found: $source"
      process_source "$target" "$source"
    else
      echo "$line" >> "$target"
    fi
  done < "$template"
  echo "- $template >> $target"
}

process_dir() {
  local path="$1"
  # local recurs="$2"

  cd "$path"
  echo "processing: $path"

  # don't process if IGNORE file present
  if [ -e "IGNORE" ]; then printf "Ignore: $path\n"; exit; fi

  local templates=$(ls *.t 2>/dev/null)
  echo "templates: $templates"
  if [[ ! -z "$templates" ]]; then
    while IFS= read -r template; do
      echo "process_template: $template $(dropext $template).md"
      process_template "$template" "$(dropext $template).md"
    done <<< "$templates"
  fi

  cd - 1>/dev/null
}

process_dirs() {
  local path="$1"
  local recurs="$2"

  if [[ "$recurs" -eq 0 ]]; then
    process_dir "$path"
  else
    local dirs="$(find $path -type d)"
    echo "dirs: $dirs"
    while IFS= read -r dir; do
      echo "dir: $dir"
      process_dir "$dir"
    done <<< "$dirs"
  fi
}

main() {
  path=""
  recurs=0

  if [[ "$#" -gt 2 ]]; then die "too many arguments"; fi
  while (( "$#" )); do
    case "$1" in
      "-r")
        recurs=1
        ;;
      *)
        if [[ ! -z $path ]]; then die "too many arguments"; fi
        path="$1"
        ;;
    esac
    shift
  done

  path="$(strip_trailing_slashes ${path:-.})"
  process_dirs "$path" "$recurs"
}

main "$@"
