---
title: "Variables"
weight: 30
---

Variables are explicitly declared and used by the compiler to check that they
are used as expected for their type. You don't have to declare the type if the
compiler can infer it from its use.

```js
let a = "hello";
console.log(a, typeof a);

let b = 1;
console.log(b, typeof b);

let c = b;
console.log(c, typeof c);

// error: c is a number, can't assign a string to it
// c = a;

let d = true;
console.log(d, typeof d);

let e: number;
// error: can't use e before it's assigned a value
// console.log(e, typeof(e));
e = 4;
console.log(e, typeof e);
```

```sh
$ deno run variables.ts 
hello string
1 number
1 number
true boolean
4 number
```

{{% alert title="Note" %}} **Always** use `let` to declare a variable **unless**
you know the value is constant, which we'll discuss in the next section. {{%
/alert %}}

{{< alert color="warning" title="Warning: let vs. var" >}} Although TypeScript
allows using `var` to declare variables, **don't use it** -- always use `let` or
`const` instead.

`var` is available to support legacy behavior from older JavaScript, but it's
use is problematic in modern TypeScript. Read the
[Handbook](https://www.typescriptlang.org/docs/handbook/variable-declarations.html)
to dig deeper. {{< /alert >}}
