---
title: For loop
weight: 1
---

## Classic for loop

All three "initialization/test/update" parts used.

@forloop1.ts

## Basic for loop

No initialization or update parts; only the test condition in the middle part
(between the two semi-colons (`;`)).

@forloop2.ts

## For loop that only exits with break or return

This for loop will continuously "spin" unless it reaches a `break` or `return`
statement, usually based on some condition to wait on that's easier to specify
in the loop body. Shown for completeness, but avoid doing this in normal code.

@forloop3.ts

## For loop with continue

This for loop will conditionally `continue` to the next iteration of the loop,
bypassing any remaining statements in the loop body.

@forloop4.ts
