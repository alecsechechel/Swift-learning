// Lesson17
//part1

let char = ["a" : 1, "b" : 2, "c" : 3, "d" : 4, "e" : 5, "f" : 6, "g" : 7, "h" : 8]

enum CellTypeColor : String {
    case Black = "Black"
    case White = "White"
    case Nill = "Outside Chessboard"
}

struct Chessboard {
    var row = 1
    var column = "a"
    
    subscript(row : Int, column : String) -> CellTypeColor.RawValue {
        
        var result : CellTypeColor
        let numColumn = char[column] ?? 0
            
        if 1...8 ~= row && 1...8 ~= numColumn {
            result = ((numColumn + row) % 2) == 0 ? .Black : .White
        } else {
            result = .Nill
        }
        return result.rawValue
    }
}

var cell = Chessboard()
cell[10,"a"]
cell[1, "a"]
cell[5, "f"]

//part2
enum CellTypeFigure : String {
    case O = "⭕️"
    case X = "❌"
    case Nill = "◻️"
}

class Array2DTyped<T>{
    
    var cols:Int, rows:Int
    var matrix:[T]
    
    init(cols:Int, rows:Int, defaultValue:T){
        self.cols = cols
        self.rows = rows
        matrix = Array(count:cols*rows,repeatedValue:defaultValue)
    }
    
    subscript(col:Int, row:Int) -> T {
        get{
            return matrix[cols * row + col]
        }
        set{
            let a = "◻️"
            if matrix[cols * row + col] == a  {
                matrix[cols * row + col] = newValue
            } else {
                matrix[cols * row + col] = oldValue
            }
            
        }
    }

    func colCount() -> Int {
        return self.cols
    }
    
    func rowCount() -> Int {
        return self.rows
    }
}


var game = Array2DTyped(cols: 3, rows: 3, defaultValue: CellTypeFigure.Nill.rawValue)

func showGame() {
    for i in 0...game.colCount()-1 {
        for j in 0...game.rowCount()-1 {
            print(game[i,j])
        }
        println()
    }
}
game[0,0] = CellTypeFigure.O.rawValue
//game[0,0] = CellTypeFigure.O.rawValue
//showGame(); println()
//game[0,1] = CellTypeFigure.X.rawValue
//showGame(); println()
//game[1,1] = CellTypeFigure.O.rawValue
//showGame(); println()
//game[2,2] = CellTypeFigure.X.rawValue
//showGame(); println()
//game[1,0] = CellTypeFigure.O.rawValue
//showGame(); println()
//game[0,2] = CellTypeFigure.X.rawValue
//showGame(); println()
//game[1,2] = CellTypeFigure.O.rawValue
//showGame(); println()
//println("O is win")




