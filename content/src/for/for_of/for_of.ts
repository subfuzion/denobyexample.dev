const nums = [2, 3, 4];

let sum = 0;
for (const num of nums) {
  sum += num;
}
console.log(`sum: ${sum}`);

const str = "hello";

for (const s of str) {
  console.log(s);
}

const map = new Map([["a", 1], ["b", 2], ["c", 3]]);

for (const entry of map) {
  console.log(entry);
}

for (const [key, value] of map) {
  console.log(`key: ${key} => value: ${value}`);
}

for (const [key] of map) {
  console.log(`key: ${key}`);
}

for (const [_, value] of map) {
  console.log(`value: ${value}`);
}

const set = new Set([2, 2, 3, 3, 4, 4]);
for (const val of set) {
  console.log(val);
}
