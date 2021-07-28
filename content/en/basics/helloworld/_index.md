---
title: "Hello World"
weight: 10
---

Use `console.log` to print to standard output.

To run a program, use `deno run`.

{{< tabpane >}}
  {{< tab header="helloworld.ts" lang="js" >}}
console.log("Hello, World!");
  {{< /tab >}}
  {{< tab header="Command" lang="text" >}}
deno run helloworld.ts
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Hello, World!
  {{< /tab >}}
{{< /tabpane >}}

To build an executable binary of your program, use `deno compile`.

{{< tabpane >}}
  {{< tab header="Command" lang="text" >}}
deno compile
helloworld.ts
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Check ...helloworld.ts
Bundle ...helloworld.ts
Compile ...helloworld.ts
Emit helloworld
  {{< /tab >}}
  {{< tab header="Run" lang="text" >}}
$ ./helloworld
Hello, World!
  {{< /tab >}}
{{< /tabpane >}}
