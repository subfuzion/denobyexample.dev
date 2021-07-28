#!/bin/sh
set -e

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

source="$1"
if [ -z "$source" ]; then die "missing file argument"; fi

# lint
output=$(deno fmt -q "$source" 2>&1)
if ! [ -z "$output" ]; then
  printf "$output\n"
  die "format errors must be fixed."
fi

# capture output
target="$(dropext $(basename $source))"
NO_COLOR=1 deno run "$source" > "${target}.sh"

function write() {
  f_="$1"; shift
  printf "$@\n" >> "$f_"
}

# generate markdown
f="${target}.md"
printf "" > "$f"
write "$f" '<!-- markdownlint-disable -->'
write "$f" '{{< tabpane >}}'
write "$f" '  {{< tab header='"$source"' lang="text" lang="js" >}}'
cat "$source" >> "$f"
write "$f" '  {{< /tab >}}'
write "$f" '  {{< tab header="Output" lang="text" lang="shell" >}}'
cat "${target}.sh" >> "$f"
write "$f" '  {{< /tab >}}'
write "$f" '{{< /tabpane >}}'
write "$f" '<!-- markdownlint-restore -->'
