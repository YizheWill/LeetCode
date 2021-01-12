// var canPermutePalindrome = function (s) {
//   let stack = {};
//   s.split('').forEach((ele) => {
//     if (stack[ele]) {
//       delete stack[ele];
//     } else {
//       stack[ele] = true;
//     }
//   });
//   console.log('keys', Object.keys(stack));
//   return Object.keys(stack).length <= 1;
// };

// console.log("canPermutePalindrome('coab')", canPermutePalindrome('coad'));
// let arr = [1, 3, 5, 11];
// k = 7;
// var findKthPositive = function (arr, k) {
//   if (arr[0] !== 1) {
//     i += arr[0] - 1;
//   }
//   let i = 0;
//   let idx = 0;
//   let toRet = 1;
//   while (i < k) {
//     if (idx === arr.length - 1) {
//       toRet = arr[arr.length - 1] + k - i;
//       return toRet;
//     } else {
//       if (arr[idx + 1] - arr[idx] > 1) {
//         if (k - i < arr[idx + 1] - arr[idx]) {
//           toRet = arr[idx] + k - i;
//           return toRet;
//         } else {
//           i += arr[idx + 1] - arr[idx] - 1;
//         }
//       }
//     }
//     idx++;
//   }
// };
// console.log('findKthPositive(arr, k)', findKthPositive(arr, k));
