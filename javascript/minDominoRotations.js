// var minDominoRotations = function(A, B) {
//   hash = {}
//   A.forEach((ele,idx) => {
//     if (hash[ele]) hash[ele].push({a: idx})
//     else hash[ele] = [{a: idx}]
//   });
//   B.forEach((ele, idx)=> {
//     if (hash[ele]) hash[ele].push({b: idx})
//     else hash[ele] = [{b:idx}]
//   })
//   res = {}
//   Object.keys(hash).forEach(key => {
//     if (hash[key].length >= A.length) res[key] = hash[key] 
//   })
//   if (Object.keys(res).length === 0) return false

// };

// minDominoRotations(["a","b","c"], ["c", "c", "c"])