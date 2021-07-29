class A {
  foo = "base-value";
}

class B extends A {
  bar = "derived-value";
}

const b = new B();

for (const [key, value] of Object.entries(b)) {
  console.log(key, "=", value);
}
