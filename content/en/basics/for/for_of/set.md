---
title: Iterating over a set
linkTitle: set
weight: 3
---

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=set.ts lang="text" lang="js" >}}
const set = new Set([2, 2, 3, 3, 4, 4]);

for (const val of set) {
  console.log(val);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
2
3
4
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->
