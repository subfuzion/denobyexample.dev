---
title: A bit more about numbers
linkTitle: More about numbers
weight: 1
---

TypeScript does not have separate types for `integer` and `float` values, only
`number`. Be aware that the computations that result in a floating point value
might not be what you're expecting.

@numbers.ts

You can use `Math.ceil`, `Math.floor`, and `Math.round` to convert to an integer
rounded up, down, or to the nearest, respectively.

Try using Deno's REPL (read-eval-print-loop) for experimenting. Enter
`deno repl` (or just simply `deno`) in your terminal.

```js
$ deno
Deno 1.12.1
exit using ctrl+d or close()
> Math.ceil(.95)
1
> Math.ceil(7/3)
3
> Math.floor(7/3)
2
> Math.round(7/3)
2
```

If you want to obtain a string value of the result of a calculation to a
particular precision, you can use `toPrecision()` to specify the number of
significant digits.

```js
> (7/3).toPrecision(3)
"2.33"
> (2).toPrecision(4)
"2.000"
```
