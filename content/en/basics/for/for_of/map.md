---
title: Iterating over a map
linkTitle: map
weight: 4
---

```js
const map = new Map([
  ["a", 1],
  ["b", 2],
  ["c", 3],
]);

```

Iterate over map entries as key,value tuples.

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

Iterate over the map, accessing the key and value parts as variables.

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

Access just the keys.

```js
for (const [key] of map) {
  console.log(`key: ${key}`);
}
```

```text
key: a
key: b
key: c
```

Access just the values; requires a placeholder for the keys,
as designated by the underscore (`_`).

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
