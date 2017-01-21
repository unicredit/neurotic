import linalg

type QuadraticCost* = object

proc forward*(m: QuadraticCost, x, y: DVector64): float64 = l_2(x - y)

proc backward*(m: QuadraticCost, x, y: DVector64): DVector64 = 2 * (x - y)