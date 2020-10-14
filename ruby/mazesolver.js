// const fs = require("fs");

// var text = fs.readFileSync("./maze1.txt").toString("utf-8");
// var textByLine = text.split("\n");
// textByLine = textByLine
//   .splice(1, textByLine.length - 2)
//   .map((el) => el.substring(1, el.length - 1));
// const startAndEnd = {};
// textByLine.forEach((el, idx) => {
//   if (el.includes("S")) startAndEnd.start = [idx, el.indexOf("S")];
//   else if (el.includes("E")) startAndEnd.end = [idx, el.indexOf("E")];
// });
// console.log(startAndEnd);

class Node {
  constructor(parent, val, ...children) {
    this.parent = parent;
    this.children = [];
    this.val = val;
  }
  appendChild(node) {
    this.children.push(node);
  }

  isEnd() {
    return this.val == "E";
  }
}

node = new Node(null, "E");

node1 = new Node(node, "K");
node2 = new Node(node, "L");
node.appendChild(node1);
node.appendChild(node2);
console.log(node);
