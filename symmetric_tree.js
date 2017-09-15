// Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
// 
// For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
// 
//     1
//    / \
//   2   2
//  / \ / \
// 3  4 4  3
//
// But the following [1,2,2,null,3,null,3] is not:
//     1
//    / \
//   2   2
//    \   \
//    3    3
//
// ===================
//
// - divide and conquer?
//
// leetcode solution:

var isSymmetric = function(root) {
  return isMirror(root, root);
};

var isMirror = function(root1, root2) {
  if (root1 === null && root2 === null) { return true; }
  if (root1 === null || root2 === null) { return false; }

  return (root1.val === root2.val) &&
    isMirror(root1.right, root2.left) &&
    isMirror(root1.left, root2.right);
};

