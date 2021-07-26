---
title: "Values"
weight: 20
---

Deno supports both JavaScript and TypeScript, which share the same primitive
types: `string`, `number`, and `boolean`.

<!-- markdownlint-disable -->
{{< tabpane >}}
  {{< tab header=values.ts lang="text" lang="js" >}}
// String values.
// Strings can be concatenated.
console.log("deno" + ".land");

// Number values.
// Numbers support all the usual operations.
// There are no separate types for integer and
// floating point numbers.
console.log("1 + 1 =", 1 + 1);
console.log("2 - 1 =", 2 - 1);
console.log("2 * 2 =", 2 * 2);
console.log("6 / 3 =", 6 / 3);

// Boolean values.
console.log("true =", true);
console.log("false =", false);
console.log("true && false =", true && false);
console.log("true || false =", true || false);
console.log("!true =", !true);
  {{< /tab >}}
  {{< tab header="Output" lang="text" lang="shell" >}}
deno.land
1 + 1 = 2
2 - 1 = 1
2 * 2 = 4
6 / 3 = 2
true = true
false = false
true && false = false
true || false = true
!true = false
  {{< /tab >}}
{{< /tabpane >}}
<!-- markdownlint-restore -->
