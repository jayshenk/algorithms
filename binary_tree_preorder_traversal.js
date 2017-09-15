// Given a binary tree, return the preorder traversal of its nodes' values.
// 
// For example:
// Given binary tree {1,#,2,3},
//    1
//     \
//      2
//     /
//    3
// return [1,2,3].
//
// =====================
//
// recursive solution:

var preorderTraversal = function(root) {
  values = [];
  return preorderTraversalRecurse(root, values);
};

var preorderTraversalRecurse = function(root, values) {
  if (root) {
    values.push(root.val);
    preorderTraversalRecurse(root.left, values);
    preorderTraversalRecurse(root.right, values);
  }
  return values;
};

// iterative solution:

var preorderTraversal = function(root) {
  if (root === null) { return []; }

  var result = [];
  var stack = [root];
  var node;
  var left;
  var right;

  while (stack.length) {
    node = stack.pop();
    result.push(node.val);
    left = node.left;
    right = node.right;

    if (right) { stack.push(right); }
    if (left) { stack.push(left); }
  }

  return result;
};

