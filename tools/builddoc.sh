#!/usr/bin/env bash

die() {
  printf "Error: $@\n"
  printf "Usage: $(basename $0) TEMPLATE\n"
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
      process_source "$target" "${line:1}"
    else
      echo "$line" >> "$target"
    fi
  done < "$template"
}

main() {
  # don't process if IGNORE file present
  if [ -e "IGNORE" ]; then printf "Ignore: $(basename $PWD)\n"; exit; fi

  local template="$1"
  if [ -z "$template" ]; then die "missing file argument"; fi

  local base="$(check_template_base $template)"
  if [ "$?" -gt 0 ]; then die "$base"; fi

  # now that the template has been verified
  process_template "${base}.t" "${base}.md"
}

main "$@"
