var ja = {
  "foo": "a-value",
};

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

for (const [key, value] of Object.entries(b)) {
  console.log(key, "=", value);
}

for (const key of Object.keys(b)) {
  console.log(key);
}

for (const value of Object.values(b)) {
  console.log(value);
}
