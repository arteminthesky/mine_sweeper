class Pair {
  final int x;
  final int y;

  const Pair(this.x, this.y);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pair &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  operator +(Pair other) {
    return Pair(x + other.x, y + other.y);
  }
}
