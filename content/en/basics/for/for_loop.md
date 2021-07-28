---
title: For loop
weight: 1
---

## Classic for loop

All three "initialization/test/update" parts used.

```js
for (let j = 4; j < 10; j++) {
  console.log(j);
}
```

```text
4
5
6
7
8
9
```

## Basic for loop

No initialization or update parts; only the test condition in the middle part
(between the two semi-colons (`;`)).

```js
let i = 1;
for (; i <= 3;) {
  console.log(i);
  i++;
}
```

```text
$ deno run for.ts 
1
2
3
```

## For loop that only exits with break or return

This for loop will continuously "spin" unless it reaches a `break` or `return`
statement, usually based on some condition to wait on that's easier to specify
in the loop body. Shown for completeness, but avoid doing this in normal code.

```js
for (;;) {
  console.log("loop");
  break;
}
```

```text
loop
```

## For loop with continue

This for loop will conditionally `continue` to the next iteration of the loop,
bypassing any remaining statements in the loop body.

```js
for (let n = 0; n <= 5; n++) {
  if (n % 2 == 0) continue;
  console.log(n);
}
```

```text
1
3
5
```