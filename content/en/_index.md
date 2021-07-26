---
title: "Deno by Example"
linkTitle: "Examples"
weight: 0
hide_feedback: true
toc_hide: true
cascade:
- type: "docs"
  _target:
    path: "/**"
description: >
  A hands-on orientation to [Deno](https://deno.land) inspired by
  [Go by Example](https://gobyexample.com/).
---

Deno is a simple, modern and secure runtime for JavaScript and TypeScript.

- Secure by default. No file, network, or environment access, unless explicitly
  enabled.

- Supports TypeScript out of the box.

- Ships only a single executable file.

- Has built-in utilities like a dependency inspector (`deno info`) and a code
  formatter (`deno fmt`).

- Has a set of reviewed (audited) standard modules that are guaranteed to work
  with Deno: [deno.land/std](https://deno.land/std)

<!-- markdownlint-disable --> 
{{% pageinfo %}}

**Deno by Example** focuses on TypeScript.

Deno innovates in a number of ways, and one of these is by providing first class
"batteries-included" support for TypeScript.

It's better to catch mistakes early compiling code instead of later after the
program is already running and harder to diagnose. As you ramp up, you'll
benefit from early exposure to strong typing, so all of the examples here are
written with this in mind.

{{% /pageinfo %}}
<!-- markdownlint-restore -->
