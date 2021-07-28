#!/bin/sh
set -e

markdownlint-cli2 content/en
deno fmt content/src
