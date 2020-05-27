class RadixNode {
  String _prefix;
  int _value;
  List<RadixNode> _children;

  RadixNode(this._prefix, this._value) {
    _children = [];
  }

  String getPrefix() {
    return _prefix;
  }

  getValue() {
    return _value;
  }

  List<RadixNode> getChildren() {
    return _children;
  }

  setPrefix(String prefix) {
    this._prefix = prefix;
  }

  setValue(int value) {
    this._value = value;
  }
}
