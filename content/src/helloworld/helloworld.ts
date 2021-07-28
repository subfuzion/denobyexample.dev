console.log("Hello, World!");

// Use `let` instead of `const` if you need to update
// `name` after initial assignment.
const name = "Deno";

// `console.log` automatically inserts spaces
// between arguments.
console.log("Hello,", name, "!");

// Use a template literal to embed the variable in the
// string for better control over formatting.
console.log(`Hello, ${name}!`);

// Template literals allow you to run any arbitrary code,
// such as calling a function, inside the braces (`${}`).
const getName = () => "Deno";
console.log(`Hello, ${getName()}!`);
