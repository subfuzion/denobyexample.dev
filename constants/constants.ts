const s = "constant";
console.log(s, typeof (s));

// error: can't assign value to a constant
// s = "nope";

const n = 500000000;
console.log(n, typeof (n));

const d = 3e20 / n;
console.log(d, typeof (d));

console.log(Math.sin(n));
