---
title: Using a template literal
weight: 2
---

Use a template literal to embed the variable in the string for better control
over formatting. A template literal uses backticks (`` ` ``) instead of quotes
(`"`).

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header="helloworld3.ts" lang="js" >}}
const name = "World";
console.log(`Hello, ${name}!`);
  {{< /tab >}}
  {{< tab header="Command" lang="text" >}}
deno run helloworld3.ts
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Hello, World!
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->

Template literals allow you to run any arbitrary code, including calling
functions, inside the braces (`${}`).

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header="helloworld4.ts" lang="js" >}}
const getName = () => "Deno";
console.log(`Hello, ${getName()}!`);
  {{< /tab >}}
  {{< tab header="Command" lang="text" >}}
deno run helloworld4.ts
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Hello, Deno!
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->

The example demonstrates using an arrow function. Arrow functions will be
discussed later. For now, just realize that calling `getName()` returns the
string, "Deno". The returned string is passed as an argument to`console.log()`.
