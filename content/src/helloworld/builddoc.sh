#!/usr/bin/env bash

function die() {
  printf "Error: $@\n"
  printf "Usage: $(basename $0) FILE\n"
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

function lint() {
  local source="$1"
  local output=$(deno fmt -q "$source" 2>&1)
  if ! [ -z "$output" ]; then
    printf "$output\n"
    die "format errors must be fixed."
  fi
}

# run and capture output
function run() {
  local source="$1"
  local target="${2}.sh"
  NO_COLOR=1 deno run "$source" > "$target"
}

function write() {
  f_="$1"; shift
  printf "$@\n" >> "$f_"
}

# generate markdown
function gen() {
  local source="$1"
  local target_sh="${2}.sh"
  local target="${2}.md"

  if ! [ -e "frontmatter.md" ]; then die "missing frontmatter.md"; fi
  cat frontmatter.md > "$target"
  write "$target" "\n"

  write "$target" '<!-- markdownlint-disable -->'
  write "$target" '{{< tabpane >}}'
  write "$target" '  {{< tab header='"$source"' lang="text" lang="js" >}}'

  cat "$source" >> "$target"

  write "$target" '  {{< /tab >}}'
  write "$target" '  {{< tab header="Output" lang="text" lang="shell" >}}'

  cat "$target_sh" >> "$target"

  write "$target" '  {{< /tab >}}'
  write "$target" '{{< /tabpane >}}'
  write "$target" '<!-- markdownlint-restore -->'
}



main() {
  # don't process if IGNORE file present
  if [ -e "IGNORE" ]; then printf "Ignore: $(basename $PWD)\n"; exit; fi

  source="$1"
  if [ -z "$source" ]; then die "missing file argument"; fi

  target="$(dropext $(basename $source))"

  lint "$source"
  run  "$source" "$target"
  gen  "$source" "$target"
}

main "$@"
