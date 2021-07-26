let i = 1;
for (; i <= 3;) {
  console.log(i);
  i++;
}

for (let j = 4; j < 10; j++) {
  console.log(j);
}

for (;;) {
  console.log("loop");
  break;
}

for (let n = 0; n <= 5; n++) {
  if (n % 2 == 0) {
    continue;
  }
  console.log(n);
}
