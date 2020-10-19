const funcName = () => {
  const person = {
    name: "Will",
    age: 34,
  };

  console.log(person.name);
};
funcName();

function my_map(array, cb) {
  let res = array.map((ele) => cb(ele));
  console.log(res);
  return res;
}
function change_val(val) {
  if (val % 3 == 0) return 3;
  return 5;
}
my_map([1, 2, 3], change_val);
