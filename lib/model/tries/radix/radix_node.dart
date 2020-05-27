class RadixNode {
  String _prefix;
  int _value;
  List _children;

  RadixNode(this._prefix, this._value);

  getPrefix() { return _prefix; }

  getValue() { return _value; }

  setValue (int value) { this._value = value; }
}