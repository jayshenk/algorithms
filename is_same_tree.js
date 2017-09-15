// group solution:

var isSameTree = function(p, q) {
  if (!p &&!q) {
    return true;
  }

  if (!p && q) {
    return false;
  }

  if (p && !q) {
    return false;
  }

  if (p.val !== q.val) {
    return false;
  }

  var lefts = isSameTree(p.left, q.left);
  var rights = isSameTree(p.right, q.right);

  return lefts && rights;
};

