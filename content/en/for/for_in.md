---
title: For..in loop
weight: 80
---

The for..in loop is used to iterate over an object's properties. It's usage with
JavaScript has complex behavior that can be surprising, but as long as you stick
to TypeScript, you do not need to be aware of JavaScript's object-based
inheritance and object prototype chaining.

Here we demonstrate the for..in loop, followed by the equivalent example using
the for..of loop discussed in the previous section. Our recommendation is that
you focus on using the for..of loop to keep things simple.

This example will use code that has not been discussed yet. The main point of
this example right now is just to highlight the for..in and for..of loops with
objects.

```js
class A {
  foo: string = "base-value";
}

class B extends A {
  bar: string = "derived-value";
}

const b = new B();

for (const prop in b) {
  console.log(prop, "=", b[prop as keyof B]);
}
```

Output:

```text
$ deno run for_in.ts 
foo = base-value
bar = derived-value
```

There are two things to note about the output:

- Looping over an object's properties enumerates all of the properties in the
  inheritance chain. This normally what you want (and this is different from
  iterating over the prototype chain when using classic JavaScript object-based
  inheritance, which might or might not be what you want).
- Because TypeScript is strongly typed, you have to cast each element of the
  enumeration to an
  [indexed access type](https://www.typescriptlang.org/docs/handbook/2/indexed-access-types.html)
  using `keyof` for the type.

There's an easier way to do this. Simply use the for..of loop discussed in the
previous section. The instance itself (`b`) is not directly iterable, but you
can get an iterator using `Object.entries(b)`, as shown here:

```js
for (const [key, value] of Object.entries(b)) {
  console.log(key, "=", value);
}
```

Output:

```text
foo = base-value
bar = derived-value
```

If you just want to iterate over an object's keys or over its values, you can
also just use `Object.keys()` or `Object.values()`, respectively, instead of
`Object.entries()`.
