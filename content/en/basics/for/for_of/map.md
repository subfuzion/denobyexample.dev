---
title: Iterating over a map
linkTitle: map
weight: 4
---

Iterate over map entries as key,value tuples.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=map1.ts lang="text" lang="js" >}}
const map = new Map([
  ["a", 1],
  ["b", 2],
  ["c", 3],
]);

for (const entry of map) {
  console.log(entry);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
[ "a", 1 ]
[ "b", 2 ]
[ "c", 3 ]
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->


Iterate over the map, accessing the key and value parts as variables.
<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=map2.ts lang="text" lang="js" >}}
const map = new Map([["a", 1], ["b", 2], ["c", 3]]);

for (const [k, v] of map) {
  console.log(`key: ${k} => value: ${v}`);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
key: a => value: 1
key: b => value: 2
key: c => value: 3
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->


Iterate over just keys.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=map3.ts lang="text" lang="js" >}}
const map = new Map([["a", 1], ["b", 2], ["c", 3]]);

for (const [key] of map) {
  console.log(`key: ${key}`);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
key: a
key: b
key: c
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->

Iterate over just the values.  Note that a placeholder is required for each key,
as designated by the underscore (`_`).

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=map4.ts lang="text" lang="js" >}}
const map = new Map([["a", 1], ["b", 2], ["c", 3]]);

for (const [_, value] of map) {
  console.log(`value: ${value}`);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
value: 1
value: 2
value: 3
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->
