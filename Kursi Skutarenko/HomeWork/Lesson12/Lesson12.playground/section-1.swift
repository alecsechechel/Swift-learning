// Home work 12
//part1

let columnLetters = [1 : "a", 2 : "b", 3 : "c", 4 : "d", 5 : "e", 6 : "f", 7 : "g", 8 : "h"]
let columnLettersNew = ["a" : 1, "b" : 2, "c" : 3, "d" : 4, "e" : 5, "f" : 6, "g" : 7, "h" : 8]

let black = "\u{25A0}"
let white = "\u{25A1}"

enum Figures : String {
    case Pawns = "Pawns" //пешка
    case Castle = "Castle" //ладья
    case Knight = "Knight" //конь
    case Bishop = "Bishop" //офицер
    case King = "King" //король
    case Queen = "Queen" // королева
}

enum MoveDirection {
    case Horisontal
    case Vertical
    case Dioganal
    case MoveKnight
}

enum MoveLength {
    case One
    case Many
}

enum FiguresUnicode : String {
    case PawnsWhite = "\u{2659}"
    case CastleWhite = "\u{2656}"
    case KnightWhite = "\u{2658}"
    case BishopWhite = "\u{2657}"
    case KingWhite = "\u{2654}"
    case QueenWhite = "\u{2655}"
    case PawnsBlack = "\u{265F}"
    case CastleBlack = "\u{265C}"
    case KnightBlack = "\u{265E}"
    case BishopBlack = "\u{265D}"
    case KingBlack = "\u{265A}"
    case QueenBlack = "\u{265B}"
}

enum Color {
    case Black
    case White
}

enum TypeCombination {
    case AllFigures
    case MateFirst
}

typealias Position = (row: Int, column: String)
typealias Figure = (type: Figures, color: Color, position: Position)
typealias MoveFigures = (direction: [MoveDirection], length: MoveLength)

func getMove(type: Figures) -> MoveFigures{
    var move : MoveFigures
    var direction = [MoveDirection]()
    
    switch type {
        case .Pawns :
            direction.append(MoveDirection.Vertical)
            move.length = MoveLength.One
        case .Castle :
            direction.append(MoveDirection.Vertical)
            direction.append(MoveDirection.Horisontal)
            move.length = MoveLength.Many
        case .Knight :
            direction.append(MoveDirection.MoveKnight)
            move.length = MoveLength.One
        case .Bishop :
            direction.append(MoveDirection.Dioganal)
            move.length = MoveLength.Many
        case .King :
            direction.append(MoveDirection.Dioganal)
            direction.append(MoveDirection.Horisontal)
            direction.append(MoveDirection.Vertical)
            move.length = MoveLength.One
        case .Queen :
            direction.append(MoveDirection.Dioganal)
            direction.append(MoveDirection.Horisontal)
            direction.append(MoveDirection.Vertical)
            move.length = MoveLength.Many
        
    default: break
    }
    move.direction = direction
    
    return move
}

func infoAboutFigure(figure: Figure) {
    var type = ""
    var color = figure.color == Color.Black ? "Black" : "White"
    
    switch figure.type {
    case .Pawns : type  = "Pawns"
    case .Castle : type = "Castle"
    case .Knight : type = "Knight"
    case .Bishop : type = "Bishop"
    case .King : type   = "King"
    case .Queen : type  = "Queen"
        
    default: break
    }
    
    println("Figure type \(type) has color \(color) and stay on cell \(figure.position.row)\(String(figure.position.column))")
}

func checkFigure(arrayFigures:[Figure], row : Int, column : Int) -> (isPresent: Bool, unicodeFigure: String) {
    var result = (isPresent : false, unicodeFigure : "")
    
    for figure in arrayFigures {
        if figure.position.row == row && figure.position.column == columnLetters[column] {
            result.isPresent = true
            switch figure.type {
            case .King : result.unicodeFigure = figure.color == Color.Black ? FiguresUnicode.KingBlack.rawValue : FiguresUnicode.KingWhite.rawValue
            case .Queen : result.unicodeFigure = figure.color == Color.Black ? FiguresUnicode.QueenBlack.rawValue : FiguresUnicode.QueenWhite.rawValue
            case .Pawns : result.unicodeFigure = figure.color == Color.Black ? FiguresUnicode.PawnsBlack.rawValue : FiguresUnicode.PawnsWhite.rawValue
            case .Castle : result.unicodeFigure = figure.color == Color.Black ? FiguresUnicode.CastleBlack.rawValue : FiguresUnicode.CastleWhite.rawValue
            case .Knight : result.unicodeFigure = figure.color == Color.Black ? FiguresUnicode.KnightBlack.rawValue : FiguresUnicode.KnightWhite.rawValue
            default : result.unicodeFigure = figure.color == Color.Black ? FiguresUnicode.BishopBlack.rawValue : FiguresUnicode.BishopWhite.rawValue
            }
        }
    }
  return result
}

func showPlayField(arrayFigures:[Figure]) {
    println("   a b c d e f g h")
    for i in 1...8 {
        for j in 1...8 {
            j == 1 ? print(" \(i) ") : print(" ")
            let prinFigure = checkFigure(arrayFigures,i, j)
            if prinFigure.isPresent {
                print(prinFigure.unicodeFigure)
            } else {
                (i + j) % 2 == 0 ? print("\(black)") : print("\(white)")
            }
        }
        println()
    }
    println("   a b c d e f g h")

}

func getArrayPossition(figure: Figure) -> [Position] {
    let movePossible = getMove(figure.type)
    var array = [Position]()
    let x = figure.position.row
    let y = columnLettersNew[figure.position.column]!
    var x1 = 0
    var y1 = 0
    //println("\(x), \(y)")
    if movePossible.length == .One {
        for direction in movePossible.direction {
            switch direction {
            case .Dioganal :
                if x > 1 && y > 1 { array.append((x-1, columnLetters[y-1]!))}
                if x < 8 && y > 1 { array.append((x+1,columnLetters[y-1]!))}
                if x > 1 && y < 8 { array.append((x-1,columnLetters[y+1]!))}
                if x < 8 && y < 8 { array.append((x+1,columnLetters[y+1]!))}
            case .Vertical :
                if y > 1 { array.append((x,columnLetters[y-1]!))}
                if y < 8 { array.append((x,columnLetters[y+1]!))}
            case .Horisontal :
                if x > 1 { array.append((x-1,columnLetters[y]!)) }
                if x < 8 { array.append((x+1,columnLetters[y]!)) }
            case .MoveKnight :
                if x > 2 && y > 1 { array.append((x-2, columnLetters[y-1]!)) }
                if x > 1 && y > 2 { array.append((x-1, columnLetters[y-2]!)) }
                if x < 7 && y < 8 { array.append((x+2, columnLetters[y+1]!)) }
                if x < 8 && y < 7 { array.append((x+1, columnLetters[y+2]!)) }
                if x < 8 && y > 2 { array.append((x+1, columnLetters[y-2]!)) }
                if x < 7 && y > 1 { array.append((x+2, columnLetters[y-1]!)) }
                if x > 2 && y < 8 { array.append((x-2, columnLetters[y+1]!)) }
                if x > 1 && y < 7 { array.append((x-1, columnLetters[y+2]!)) }
            default: break
            }
        }
    } else if movePossible.length == .Many {
        for direction in movePossible.direction {
            x1 = x; y1 = y
            switch direction {
            case .Dioganal :
                while x1 > 1 && y1 > 1 {
                    array.append((x1-1, columnLetters[y1-1]!))
                    x1--; y1--
                }
                while x < 8 && y > 1 {
                    array.append((x1-1,columnLetters[y1+1]!))
                    x1++; y1--
                }
                while x > 1 && y < 8 {
                    array.append((x1-1,columnLetters[y1-1]!))
                    x1--; y1++
                }
                while x1 < 8 && y1 < 8 {
                    array.append((x1-1,columnLetters[y1+1]!))
                    x1++; y1++
                }
            case .Vertical :
                while y1 > 1 {
                    array.append((x,columnLetters[y1-1]!))
                    y1--
                }
                while y1 < 8 {
                    array.append((x,columnLetters[y1+1]!))
                    y1++
                }
            case .Horisontal :
                while x1 > 1 {
                    array.append((x1-1,columnLetters[y]!))
                    x1--
                }
                while x1 < 8 {
                    array.append((x1-1,columnLetters[y]!))
                    x1++
                }
            default: break
            }
        }
    }
    println()
    return array
}

func moveFigure(var arrayFigures: [Figure],nameFigure: Figure, newPosition: Position) -> [Figure] {
    let array = getArrayPossition(nameFigure)
    var findPosition = false
    var newFigure = nameFigure
    var deleteIndex : Int?
    var changeIndex : Int?
    
    for (index, value) in enumerate(array) {
        if value.row == newPosition.row && value.column == newPosition.column {
            findPosition = true
            break
        }
    }

    for (index,figure) in enumerate(arrayFigures) {
        if figure.position.row == nameFigure.position.row && figure.position.column == nameFigure.position.column {
            
            changeIndex = index
        }
    }

    if findPosition {
        for (index,figure) in enumerate(arrayFigures) {
            if figure.position.row == newPosition.row && figure.position.column == newPosition.column && nameFigure.color != figure.color {
                    deleteIndex = index
            } else if figure.position.row == newPosition.row && figure.position.column == newPosition.column && nameFigure.color == figure.color {
                changeIndex = nil
            }
        }
    }
    
    if deleteIndex != nil {
        arrayFigures.removeAtIndex(deleteIndex!)
    }
    if changeIndex != nil {
        arrayFigures[changeIndex!].position = newPosition
    }
    return arrayFigures
}

func makeArrayFigures(type: TypeCombination) -> [Figure]{
    var array = [Figure]()
    
    switch type {
    case .AllFigures :
        array.append((Figures.Castle, Color.Black, (8, "a")))
        array.append((Figures.Castle, Color.Black, (8, "h")))
        array.append((Figures.Knight, Color.Black, (8, "b")))
        array.append((Figures.Knight, Color.Black, (8, "g")))
        array.append((Figures.Bishop, Color.Black, (8, "c")))
        array.append((Figures.Bishop, Color.Black, (8, "f")))
        array.append((Figures.King, Color.Black, (8, "d")))
        array.append((Figures.Queen, Color.Black, (8, "e")))
        for i in 1...8 {
            array.append((Figures.Pawns, Color.Black, (7, columnLetters[i]!)))
            array.append((Figures.Pawns, Color.White, (2, columnLetters[i]!)))
        }
        array.append((Figures.Castle, Color.White, (1, "a")))
        array.append((Figures.Castle, Color.White, (1, "h")))
        array.append((Figures.Knight, Color.White, (1, "b")))
        array.append((Figures.Knight, Color.White, (1, "g")))
        array.append((Figures.Bishop, Color.White, (1, "c")))
        array.append((Figures.Bishop, Color.White, (1, "f")))
        array.append((Figures.King, Color.White, (1, "d")))
        array.append((Figures.Queen, Color.White, (1, "e")))
        
    case .MateFirst :
        array.append((type: Figures.King, color: Color.Black, (1,"a")))
        array.append((type: Figures.Knight, color: Color.Black, (2,"f")))
        array.append((type: Figures.King, color: Color.White, (3, "b")))
        array.append((type: Figures.Queen, color: Color.White, (2, "b")))
        array.append((type: Figures.Pawns, color: Color.White, (4, "a")))
      
    default : break
    }
   return array
}
//part1 all figures
showPlayField(makeArrayFigures(TypeCombination.AllFigures) )
//part2
println("\n Mate")
showPlayField(makeArrayFigures(TypeCombination.MateFirst))
//println("Describe fgures on field")
//for figure in makeArrayFigures(TypeCombination.MateFirst) {
//    infoAboutFigure(figure)
//}
//part4
println("Побегаем черним конем")
var allFigures = makeArrayFigures(TypeCombination.AllFigures)
showPlayField(allFigures)
allFigures = moveFigure(allFigures,allFigures[2], (6,"a"))
showPlayField(allFigures)
allFigures = moveFigure(allFigures,allFigures[2], (5,"c"))
showPlayField(allFigures)














