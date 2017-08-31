function binarySearch(array, target) {
  var left = 0;
  var right = array.length - 1;

  while (left + 1 < right) {
    var mid = Math.floor(left + (right - left) / 2);

    if (array[mid] == target) {
      return mid;
    } else if (array[mid] < target) {
      left = mid;
    } else {
      right = mid;
    }
  }

  if (array[left] == target) { return left; }
  if (array[right] == target) { return right; }
}

console.log(binarySearch([0, 2, 4, 5, 7, 8, 10], 7) === 4);
console.log(binarySearch([0, 2, 4, 5, 7, 8, 10], 0) === 0);
