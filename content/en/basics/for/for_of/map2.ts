const map = new Map([["a", 1], ["b", 2], ["c", 3]]);

for (const [k, v] of map) {
  console.log(`key: ${k} => value: ${v}`);
}
