let members = [ 1: "Ana", 2: "Bruno", 3: "Carlos", 4: "Denise", 5: "Eduardo", 6: "Fernanda", 7: "Gabriel", 8: "Helena", 9: "Isabela", 10: "João", 11: "Karen", 12: "Lucas", 13: "Mariana", 14: "Natália", 15: "Otávio", 16: "Patrícia", 17: "Queila", 18: "Rafael", 19: "Sandra", 20: "Thiago", 21: "Ursula", 22: "Vinicius", 23: "Wagner", 24: "Ximena", 25: "Yara", 26: "Zélio", 27: "Amanda", 28: "Bianca", 29: "Cristina", 30: "Diego", 31: "Elisa", 32: "Fabiana", 33: "Guilherme", 34: "Humberto", 35: "Izabela", 36: "Júlia", 37: "Kátia", 38: "Leonardo", 39: "Márcia", 40: "Nelson"]

let previousTeams1 = [  
  [1, 9, 14, 26],
  [2, 12, 19, 35],
  [3, 11, 22, 34],
  [4, 18, 25, 33],
  [5, 10, 20, 39],
  [6, 15, 24, 38],
  [7, 13, 21, 31],
  [8, 16, 27, 40],
  [17, 23, 28, 36],
  [29, 30, 32, 37]
]

let previousTeams2 = [
  [1, 5, 9, 38],
  [2, 6, 14, 31],
  [3, 10, 20, 26],
  [4, 7, 19, 37],
  [8, 12, 27, 40],
  [11, 13, 24, 35],
  [15, 22, 25, 34],
  [16, 18, 23, 32],
  [17, 21, 29, 39],
  [28, 30, 33, 36]
]

let novoTime = gerarTime(previousTeams1)

print("Time 1:")
for linha in previousTeams1 {
    print(linha.map { members[$0] ?? "Jogador \(String($0))" })
}

print("\nTime 2:")
for linha in novoTime {
    print(linha.map { members[$0] ?? "Jogador \(String($0))" })
}