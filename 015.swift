// Lattice Paths

func latticePaths(_ rows: Int, _ cols: Int) -> Double {
    return factorial(rows + cols) / (factorial(rows) * factorial(cols))
    
}

func factorial(_ num: Int) -> Double {
    return (1...num).map(Double.init).reduce(1, *)
}

print(latticePaths(20, 20)) // 137846528820 in 0.143s