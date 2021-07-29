// Array iteration

const nums = [2, 3, 4];

// Classic for loop
let sum = 0;
// Use `let i` because i mutates (`i++`).
for (let i = 0; i < nums.length; i++) {
  sum += nums[i];
}
console.log(`sum: ${sum}`);
// sum: 9

// for..of loop
sum = 0;
// Use `const n` because each iteration gets a new `n`.
for (const n of nums) {
  sum += n;
}
console.log(`sum: ${sum}`);
// sum: 9

// String iteration
const str = "hello";

for (const s of str) {
  console.log(s.toUpperCase());
}
// H
// E
// L
// L
// O

// Set iteration
const set = new Set([2, 2, 3, 3, 4, 4]);
for (const val of set) {
  console.log(val);
}
// 2
// 3
// 4

// Map iteration

const map = new Map([
  ["a", 1],
  ["b", 2],
  ["c", 3],
]);

for (const entry of map) {
  console.log(entry);
}
// [ "a", 1 ]
// [ "b", 2 ]
// [ "c", 3 ]

for (const [key, value] of map) {
  console.log(`key: ${key} => value: ${value}`);
}
// key: a => value: 1
// key: b => value: 2
// key: c => value: 3

for (const [key] of map) {
  console.log(`key: ${key}`);
}
// key: a
// key: b
// key: c

for (const [_, value] of map) {
  console.log(`value: ${value}`);
}
// value: 1
// value: 2
// value: 3
