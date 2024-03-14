func gerarTime(_ matriz: [[Int]]) -> [[Int]]{ 
  let dicionario = comparar(matriz)
  var novoTime: [[Int]] = []
  var valores: [Int] = []
  var valoresAnt: [Int] = [] 
  var aux: [Int] = []  
  for l in 0..<matriz.count{
    for c in 0..<matriz[0].count{
      var valorRan = Int.random(in: 1...40)
      while valores.contains(valorRan) || valoresAnt.contains(valorRan){
        valorRan = Int.random(in: 1...40)
      }
      aux += [valorRan]
      valores += aux
      if let valorDic = dicionario[valorRan], l < 8{
        valoresAnt += l == 7 && c > 1 ? [] : valorDic
      }       
    }
    novoTime += [aux]
    aux.removeAll()
    valoresAnt.removeAll()
  }
  return novoTime
}