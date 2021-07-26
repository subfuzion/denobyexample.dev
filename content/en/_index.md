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
---

Deno is a simple, modern and secure runtime for JavaScript and TypeScript that
uses V8 and is built in Rust.

- Secure by default. No file, network, or environment access, unless explicitly
enabled.

- Supports TypeScript out of the box.  - Ships only a single executable file.

- Has built-in utilities like a dependency inspector (deno info) and a code
formatter (deno fmt).

- Has a set of reviewed (audited) standard modules that are guaranteed to work
with Deno: [deno.land/std](https://deno.land/std)

{{% pageinfo %}}
This version of **Deno by Example** only shows examples for TypeScript.

Deno innovates in a number of ways, and one of these is by providing
first class "batteries-included" support for TypeScript. As you ramp
up, you will benefit from early exposure to strong typing; it is better 
to catch mistakes early when Deno compiles code instead of later after
the program is running.
{{% /pageinfo %}}
