---
title: Customizing output
weight: 11
---

## console.log arguments

Use a variable to store the name. Declare the variable with `const` if it won't
be modified after initial assignment, or else use `let`.

```js
const name = "Deno";
```

Pass the variable as an argument to `console.log`, which will automatically
insert spaces between every argument.

```js
console.log("Hello,", name, "!");
```

```text
Hello, Deno !
```

## Template literals

Use a template literal to embed the variable in the string for better control
over formatting. A template literal uses backticks (`` ` ``) instead of quotes
(`"`).

```js
console.log(`Hello, ${name}!`);
```

```text
Hello, Deno!
```

Template literals allow you to run any arbitrary code, including calling
functions, inside the braces (`${}`).

The following example demonstrates this with an arrow function. Arrow functions
will be discussed later. For now, just understand that calling `getName()` will
return the string, "Deno".

Here we invoke `getName()` in the template literal below, so the returned string
will be passed as an argument to`console.log()`.

```js
const getName = () => "Deno";
console.log(`Hello, ${getName()}!`);
```

```text
Hello, Deno!
```
