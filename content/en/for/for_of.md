---
title: For..of loop
weight: 70
---

The for..of loop is for looping over objects that implement the `Iterable`
interface (expose a `Symbol.iterator` property).

Here we sum the numbers in an array of numbers.

```js
const nums = [2,3,4]
let sum = 0;
for (let num of nums) {
    sum += num;
}
console.log(`sum: ${sum}`);
```

Output:

```text
$ deno run for_of.ts 
sum: 9
```
