---
title: Using the REPL
weight: 20
---

The Deno REPL (read/evaluate/print/loop) is a dedicated Deno command shell that
can help you to experiment and learn without having to save and run program
files.

You can enter `deno repl` or simply `deno` in your terminal. Exit the REPL by
entering `close()` or pressing `Ctrl-D` to terminate the session.

Here's an example of a session.

```text
$ deno
Deno 1.12.2
exit using ctrl+d or close()
> "Hello"
"Hello"
> 1
1
> 1 + 1
2
> 1 + 1 * 2
3
> console.log("Hello")
Hello
undefined
>
```

The shell always prints out the value of the expression you enter.
