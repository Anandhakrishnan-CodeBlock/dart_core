void main() {
  final matrixA = [
    [1, 1, 1],
    [2, 2, 2],
    [3, 3, 3],
    [4, 4, 4],
  ];
  final matrixB = [
    [1, 1, 1],
    [2, 2, 2],
    [3, 3, 3],
    [4, 4, 4],
  ];
  List<List<int>> matrixC = List.generate(4, (_) => List.filled(3, 0));

  /// Access list
  for (int i = 0; i < matrixA.length; i++) {
    /// Access item
    for (int j = 0; j < matrixB[0].length; j++) {
      matrixC[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }

  for (int i = 0; i < matrixC.length; i++) {
    print(matrixC[i]);
  }
}
