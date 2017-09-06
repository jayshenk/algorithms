// Reverse a singly linked list.

function ListNode(val) {
  this.val = val;
  this.next = null;
}

var reverseList = function(head) {
  if (head === null || head.next === null) { return head; }
  var prev = reverseList(head.next);
  head.next.next = head;
  head.next = null;
  return prev;
};

// 1 -> 2 -> 3 -> null => 3 -> 2 -> 1 -> null
var a = new ListNode(1);
var b = new ListNode(2);
var c = new ListNode(3);
a.next = b;
b.next = c;

reverseList(a);
