// Given a binary tree, return the level order traversal of its nodes' values.
//   (ie, from left to right, level by level).
// 
// For example:
// Given binary tree [3,9,20,null,null,15,7],
//     3
//    / \
//   9  20
//     /  \
//    15   7
// return its level order traversal as:
// [
//   [3],
//   [9,20],
//   [15,7]
// ]

var levelOrder = function(root) {
  if (root === null) { return []; }
  var result = [];
  var queue = [root];
  var row;
  var node;
  var left;
  var right;
  var size;

  while (queue.length) {
    row = [];
    size = queue.length;
    
    for (var i = 0; i < size; i++) {
      node = queue.shift();
      row.push(node.val);
      left = node.left;
      right = node.right;

      if (left) { queue.push(left); }
      if (right) { queue.push(right); }
    }

    result.push(row);
  }

  return result;
};
