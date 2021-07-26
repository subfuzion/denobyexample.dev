---
title: "Hello World"
weight: 10
---

Use `console.log` to print to standard output.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=helloworld.ts lang="text" lang="js" >}}
// `console.log` automatically converts args to strings.
console.log(1, "Hello, World!");

// Arguments are printed with a space between each one.
const name = "Deno";
console.log(2, "Hello,", name, "!");
console.log(3, "Hello,", name, "!", "You are number", 1, "!");

// Use a template literal to embed a variable directly in the
// string for better control over formatting.
console.log(4, `Hello, ${name}!`);

// Template literals allow you to embed expressions, not just
// variables, inside the braces (`${}`).
const getName = () => "Deno";
console.log(5, `Hello, ${getName()}!`);
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
1 Hello, World!
2 Hello, Deno !
3 Hello, Deno ! You are number 1 !
4 Hello, Deno!
5 Hello, Deno!
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->

To run a program, use `deno run`.

To build an executable binary of a program, use `deno compile`.
