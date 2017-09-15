// Walid's solution
//   - have to return a function and set previous to null in the scope of the outer function to
//   prevent leetcode from not resetting the value of previous between tests

var isValidBST = function(root) {
  function validate(root) {
    if (!root) {
      return true;
    }

    if (!validate(root.left)) {
      return false;
    }

    if (previous) {
      if (previous.val >= root.val) {
        return false;
      }
    }

    previous = root;

    if (!validate(root.right)) {
      return false;
    }

    return true;
  }

  var previous = null;
  return validate(root);
}

