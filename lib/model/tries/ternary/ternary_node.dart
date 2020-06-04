class TernaryNode {
  String _char;
  var _key;
  var _value;
  TernaryNode _left, _mid, _right;

  TernaryNode(this._char);

  setValue(var value) {
    _value = value;
  }

  setLeftChild(TernaryNode left) {
    _left = left;
  }

  setMidChild(TernaryNode mid) {
    _mid = mid;
  }

  setRightChild(TernaryNode right) {
    _right = right;
  }

  getChar() {
    return _char;
  }

  getValue() {
    return _value;
  }

  TernaryNode getLeftChild() {
    return _left;
  }

  TernaryNode getMidChild() {
    return _mid;
  }

  TernaryNode getRightChild() {
    return _right;
  }
}