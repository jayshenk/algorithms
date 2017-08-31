function binarySearch(array, target) {
  var left = 0;
  var right = array.length - 1;

  while (left + 1 <  right) {
    var mid = Math.floor(left + (right - left) / 2);

    if (array[mid] === target) {
      return mid;
    } else if (array[mid] < target) {
      left = mid;
    } else {
      right = mid;
    } 
  }

  if (array[left] === target) {
    return left;
  }
  if (array[right] === target) {
    return right;
  }
}

console.log(binarySearch([1, 2, 4, 7, 8], 7) === 3);
console.log(binarySearch([1, 2, 4, 7, 8], 1) === 0);
