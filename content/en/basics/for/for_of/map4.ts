const map = new Map([["a", 1], ["b", 2], ["c", 3]]);

for (const [_, value] of map) {
  console.log(`value: ${value}`);
}
