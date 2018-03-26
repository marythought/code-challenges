// # QUESTION #3: JavaScript counter

// # Implement a JavaScript function named `delayedCounter`. When the function is
// # invoked, one second later the string "1" is logged to the console, then one
// # second after that the string "2" is logged to the console, and so on,
// # indefinitely.

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function delayedCounter() {
  for (var i = 1; true; i++) {
    await sleep(1000)
    console.log(String(i))
  }
};