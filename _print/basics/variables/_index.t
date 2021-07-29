---
title: "Variables"
weight: 30
---

Variables are explicitly declared and used by the compiler to check that they
are used as expected for their type. You don't have to declare the type if the
compiler can infer it from its use.

@variables.ts

<!-- markdownlint-disable --> 
{{% alert title="Note" %}}
**Always** use `let` to declare a variable **unless** you know the value is
constant, which we'll discuss in the next section.
{{% /alert %}}

{{< alert color="warning" title="Warning: let vs. var" >}}
Although TypeScript allows using `var` to declare variables, **don't use it** --
always use `let` or `const` instead.

`var` is available to support legacy behavior from older JavaScript, but it's
use is problematic in modern TypeScript. See the
[Handbook](https://www.typescriptlang.org/docs/handbook/variable-declarations.html)
to dig deeper.
{{< /alert >}}
<!-- markdownlint-restore -->
