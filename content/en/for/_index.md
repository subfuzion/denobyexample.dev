---
title: For
weight: 50
---

TypeScript supports three looping constructs, the classic **for loop**, the
**for..of** loop, and the **for..in** loop.

A classic for loop with all three "initialization/test/update" parts.

```js
for (let j = 4; j < 10; j++) {
  console.log(j);
}
```

A basic for loop with a single test condition, and no initialization or update
parts.

```js
let i = 1;
for (; i <= 3;) {
  console.log(i);
  i++;
}
```

A for loop that will continue looping unless it reaches a `break` or `return`
statement.

```js
for (;;) {
  console.log("loop");
  break;
}
```

This for loop will conditionally `continue` to the next iteration of the loop,
bypassing any remaining statements in the loop body.

```js
for (let n = 0; n <= 5; n++) {
  if (n % 2 == 0) continue;
  console.log(n);
}
```

Here's the output for all of the code above.

```text
$ deno run for.ts 
1
2
3
4
5
6
7
8
9
loop
1
3
5
```
