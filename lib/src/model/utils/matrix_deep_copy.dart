class MatrixDeepCopy {
  MatrixDeepCopy._();

  static List<List<T>> copy<T>(List<List<T>> matrix) {
    return List.of(matrix.map((column) => List.of(column)));
  }
}
