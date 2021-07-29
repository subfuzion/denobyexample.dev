class A {
  foo = "base-value";
}

class B extends A {
  bar = "derived-value";
}

const b = new B();

for (const prop in b) {
  console.log(prop, "=", b[prop as keyof B]);
}
