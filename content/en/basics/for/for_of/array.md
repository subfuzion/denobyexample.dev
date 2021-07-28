---
title: Iterating over an array
linkTitle: array
weight: 2
---

```js
const nums = [2, 3, 4];

let sum = 0;
for (const num of nums) {
  sum += num;
}

console.log(`sum: ${sum}`);
```

```text
$ deno run for_of.ts 
sum: 9
```
