---
title: Iterating over an array
linkTitle: array
weight: 2
---

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=array.ts lang="text" lang="js" >}}
const nums = [2, 3, 4];

let sum = 0;

// Use `let i` because i mutates (`i++`).
for (let i = 0; i < nums.length; i++) {
  sum += nums[i];
}

console.log(`sum: ${sum}`);
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
sum: 9
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->
