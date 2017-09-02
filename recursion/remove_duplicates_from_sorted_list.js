// solution from leetcode:

var deleteDuplicates = function(head) {
  if (head === null || head.next === null) { return head; }
  head.next = deleteDuplicates(head.next);
  return head.val === head.next.val ? head.next : head;
};
