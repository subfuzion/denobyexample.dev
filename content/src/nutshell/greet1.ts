// Function decorated with type annotations.
// Parameter can have a default value.
function greeting(name: string = "World") : string {
    // Template literal using backticks instead
    // of normal quotes for a string.
    // Any valid expression inside `${}`.
    return `Hello, ${name}!`;
}

console.log(greeting());
console.log(greeting("Deno"));
