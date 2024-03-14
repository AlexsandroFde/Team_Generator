func comparar(_ matriz: [[Int]]) -> [Int: [Int]]{
  var combinacoes: [Int: [Int]] = [:]
  var valores: [Int] = [0, 0, 0]
  for lista in matriz{
    for num in lista{
      var aux = 0
      for num2 in lista where num != num2{
        valores[aux] = num2
        aux += 1
      }
      combinacoes[num] = valores
    }
  }
  return combinacoes
}