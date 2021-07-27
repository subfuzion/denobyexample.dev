---
title: "Values"
weight: 20
---

Deno supports both JavaScript and TypeScript, which share the same primitive
types: `string`, `number`, and `boolean`.

```js
console.log("deno" + ".land");

console.log("1 + 1 =", 1 + 1);
console.log("2 - 1 =", 2 - 1);
console.log("2 * 2 =", 2 * 2);
console.log("6 / 3 =", 6 / 3);

console.log("true =", true);
console.log("false =", false);
console.log("true && false =", true && false);
console.log("true || false =", true || false);
console.log("!true =", !true);
```

```text
$ deno run values.ts
1 + 1 = 2
2 - 1 = 1
2 * 2 = 4
6 / 3 = 2

true = true
false = false
true && false = false
true || false = true
!true = false
```
