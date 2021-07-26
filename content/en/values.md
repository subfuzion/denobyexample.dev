---
title: "Values"
linkTitle: "Values"
weight: 20
---

Deno supports both JavaScript and TypeScript, which share the same primitive
types: `string`, `number`, and `boolean`.

```js
console.log("deno" + ".land");

console.log("1 + 1 =", 1 + 1);
console.log("7.0 / 3.0 =", 7.0 / 3.0);

console.log("true =", true);
console.log("false =", false);
console.log("true && false =", true && false);
console.log("true || false =", true || false);
console.log("!true =", !true);
```

To see the results, save the code to `values.ts` and run it.

```shell
$ deno run values.ts
deno.land
1 + 1 = 2
7.0 / 3.0 = 2.3333333333333335
true = true
false = false
true && false = false
true || false = true
!true = false
```
