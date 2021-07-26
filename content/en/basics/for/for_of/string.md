---
title: Iterating over a string
linkTitle: string
weight: 1
---

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=string.ts lang="text" lang="js" >}}
const str = "hello";

for (const s of str) {
  console.log(s, typeof s);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
h string
e string
l string
l string
o string
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->
