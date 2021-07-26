---
title: Constants
weight: 40
---

You can use `const` anywhere you can use `let` to declare a variable. You use it
for variables whose value will not change.

Many programmers consider it a best practice to use it for **any** variable that
that does not specifically need to be mutable to avoid unintended side effects
from accidentally reassigning a value.

```js
const s = "constant";
console.log(s, typeof s);

// error: can't assign value to a constant
// s = "nope";

const n = 500000000;
console.log(n, typeof n);

const d = 3e20 / n;
console.log(d, typeof d);

console.log(Math.sin(n));
```

```shell
$ deno run constants.ts 
constant string
500000000 number
600000000000 number
-0.28470407323754404
```
