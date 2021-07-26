---
title: "Hello World"
weight: 10
---

Use `console.log` to print to standard output.

```js
console.log("Hello, World!");
```

To run the program, put the code in `helloworld.ts` and use `deno run`.

```text
$ deno run helloworld.ts
Check ...helloworld.ts
Hello, World!
```

To build a binary, use `deno compile`.

```text
$ deno compile helloworld.ts
Check ...helloworld.ts
Bundle ...helloworld.ts
Compile ...helloworld.ts
Emit helloworld
```

You can now execute the binary directly.

```text
$ ./helloworld
Hello, World!
```
