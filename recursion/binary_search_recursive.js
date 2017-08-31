var binarySearch = function(array, left, right, target) {
  if (left + 1 >= right) {
    if (array[left] === target) { return left; }
    if (array[right] === target) { return right; }
    return -1;
  }

  var mid = Math.floor(left + (right - left) / 2);

  if (array[mid] === target) {
    return mid;
  } else if (array[mid] < target) {
    return binarySearch(array, mid, right, target);
  } else {
    return binarySearch(array, left, mid, target);
  }
};

console.log(binarySearch([0, 2, 4, 5, 7, 8, 10], 0, 6, 7) === 4);
console.log(binarySearch([0, 2, 4, 5, 7, 8, 10], 0, 6, 0) === 0);
