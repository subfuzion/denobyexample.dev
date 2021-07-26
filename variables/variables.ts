let a = "hello";
console.log(a, typeof a);

let b = 1;
console.log(b, typeof b);

let c = b;
console.log(c, typeof c);

// error: c is a number, can't assign a string to it
// c = a;

let d = true;
console.log(d, typeof d);

let e: number;
// error: can't use e before it's assigned a value
// console.log(e, typeof(e));
// Now we can use e
e = 4;
console.log(e, typeof e);
