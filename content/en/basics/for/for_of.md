---
title: For..of loop
weight: 70
---

The for..of loop is for looping over objects that implement the `Iterable`
interface (expose a `Symbol.iterator` property).

## Looping over an array

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

## Looping over a string

Here we use `for..of` on a string to iterate over its characters (as individual
string values).

```js
const str = "hello";

for (const s of str) {
  console.log(s);
}
```

```text
h string
e string
l string
l string
o string
```

## Looping over a Map

```js
const map = new Map([["a", 1], ["b", 2], ["c", 3]]);
```

This iterates over map entries as key,value tuples.

```js
for (const entry of map) {
  console.log(entry);
}
```

```text
[ "a", 1 ]
[ "b", 2 ]
[ "c", 3 ]
```

You can access the key and value parts to variables like this.

```js
for (const [k, v] of map) {
  console.log(`key: ${k} => value: ${v}`);
}
```

```text
key: a => value: 1
key: b => value: 2
key: c => value: 3
```

You can access just the key be leaving out the variable for the value.

```js
for (const [key] of map) {
  console.log(`key: ${key}`);
}
```

Output:

```text
key: a
key: b
key: c
```

And you can access just the value, by the underscore (`_`) placeholder for the
key variable.

```js
for (const [_, value] of map) {
  console.log(`value: ${value}`);
}
```

```text
value: 1
value: 2
value: 3
```

## Looping over a Set

```js
const set = new Set([2, 2, 3, 3, 4, 4]);
for (const val of set) {
  console.log(val);
}
```

```text
2
3
4
```
