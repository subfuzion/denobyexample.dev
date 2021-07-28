// `console.log` automatically converts args to strings.
console.log(1, "Hello, World!");

// Arguments are printed with a space between each one.
const name = "Deno";
console.log(2, "Hello,", name, "!");
console.log(3, "Hello,", name, "!", "You are number", 1, "!");

// Use a template literal to embed a variable directly in the
// string for better control over formatting.
console.log(4, `Hello, ${name}!`);

// Template literals allow you to embed expressions, not just
// variables, inside the braces (`${}`).
const getName = () => "Deno";
console.log(5, `Hello, ${getName()}!`);
