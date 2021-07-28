// Arrow functions can replace short, simple functions.
// Return type can inferred, but parameter still requires type.
const greeting = (name: string = "World") => `Hello, ${name}!`;
console.log(greeting());
console.log(greeting("Deno"));
