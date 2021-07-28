---
title: Extra console.log arguments
linkTitle: console.log
weight: 1
---

Instead of one big string, you can pass multiple arguments to
`console.log()`. It will convert each argument to a string and print
them all out separated by a space between each argument.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header="helloworld2.ts" lang="js" >}}
const name = "World";
console.log("Hello,", name, "!");
  {{< /tab >}}
  {{< tab header="Command" lang="text" >}}
deno run helloworld2.ts
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Hello, World !
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->
