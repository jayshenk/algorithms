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

