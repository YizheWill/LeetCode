function findIntervals(intervals) {
  console.log(intervals);
  let res = [];
  const hash = {};
  intervals.forEach(([a, b], idx) => {
    res.push([a, idx]);
    if (!hash[a]) hash[a] = [idx];
    else hash[a].push(idx);
    res.push([b, idx]);
    if (!hash[b]) hash[b] = [idx];
    else hash[b].push(idx);
  });
  res
}
findIntervals([
  [2, 3],
  [3, 5],
  [8, 10],
]);
