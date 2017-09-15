// Given a binary tree, flatten it to a linked list in-place.
// 
// For example,
// Given
// 
//          1
//         / \
//        2   5
//       / \   \
//      3   4   6
// The flattened tree should look like:
//    1
//     \
//      2
//       \
//        3
//         \
//          4
//           \
//            5
//             \
//              6
//
// Walid's solution:

var flatten = function(root) {
  var flatten_helper = function(root) {
    if (root === null) { return; }

    var left = root.left;
    var right = root.right;

    if (prev) {
      prev.right = root;
      prev.left = null;
    }

    prev = root;
    flatten_helper(left);
    flatten_helper(right);
  }
  var prev = null;
  flatten_helper(root);
};

