---
title: For loop
weight: 1
---

## Classic for loop

All three "initialization/test/update" parts used.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=forloop1.ts lang="text" lang="js" >}}
for (let j = 4; j < 10; j++) {
  console.log(j);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
4
5
6
7
8
9
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->

## Basic for loop

No initialization or update parts; only the test condition in the middle part
(between the two semi-colons (`;`)).

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=forloop2.ts lang="text" lang="js" >}}
let i = 1;

for (; i <= 3;) {
  console.log(i);
  i++;
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
1
2
3
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->

## For loop that only exits with break or return

This for loop will continuously "spin" unless it reaches a `break` or `return`
statement, usually based on some condition to wait on that's easier to specify
in the loop body. Shown for completeness, but avoid doing this in normal code.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=forloop3.ts lang="text" lang="js" >}}
for (;;) {
  console.log("loop");
  break;
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
loop
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->

## For loop with continue

This for loop will conditionally `continue` to the next iteration of the loop,
bypassing any remaining statements in the loop body.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=forloop4.ts lang="text" lang="js" >}}
for (let n = 0; n <= 5; n++) {
  if (n % 2 == 0) continue;
  console.log(n);
}
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
1
3
5
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->
