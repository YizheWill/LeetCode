// class Stack {
//   constructor() {
//     this.stack = [];
//   }
//   push(el) {
//     this.stack.push(el);
//   }
//   pop(el) {
//     this.stack.pop;
//   }

//   peep() {
//     return this.stack[this.stack.length - 1];
//   }
// }

function range(size, startAt = 0) {
  return [...Array(size).keys()].map((i) => i + startAt);
}

console.log(range(7, 1));
// function characterRange(startChar, endChar) {
//   return String.fromCharCode(
//     ...range(
//       endChar.charCodeAt(0) - startChar.charCodeAt(0),
//       startChar.charCodeAt(0)
//     )
//   );
// }

// const alert_names = (keyName, keyTime) => {
//   let hash = {};
//   keyName.forEach(element, (idx) => {
//     if (!hash[element]) hash[element] = [keyTime[i]];
//     else hash[element].push(keyTime[i]);
//   });
//   return hash
//     .filter(key, (val) => check_frequent_user(val.sort))
//     .keys()
//     .sort();
// };

// const check_frequent_user = (array) => {
//   if (array.length < 3) return false;
//   [...Array()];
// };
