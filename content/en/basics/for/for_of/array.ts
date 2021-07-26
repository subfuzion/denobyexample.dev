const nums = [2, 3, 4];

let sum = 0;

// Use `let i` because i mutates (`i++`).
for (let i = 0; i < nums.length; i++) {
  sum += nums[i];
}

console.log(`sum: ${sum}`);
