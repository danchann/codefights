function matrixElementsSum(matrix) {
    let result = 0;
    for (let i=0; i<matrix.length; i++) {
      for (let j in matrix[i])
        if (matrix[i][j] === 0) {
          matrix[i][j] = "X"
          if (i === 0) {
            for (let k=1; k < matrix.length; k++) {
              matrix[k][j] = "X";
            }
          } else {
              i == matrix.length -1 ? '' : matrix[i+1][j] = "X";
          }
        } else if (matrix[i][j] != "X") {
            result += matrix[i][j]
        }
    }
    return result
  }
  