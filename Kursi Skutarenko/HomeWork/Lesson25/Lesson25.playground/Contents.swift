//1. Расширить Enum добавить методы считывания и установки

enum CheckList : UInt8 {
    case Bread =   0b00000001
    case Chicken = 0b00000010
    case Apple =   0b00000100
    case Pears   = 0b00001000
}

extension CheckList {
    
    typealias List = UInt8
    
//    func writeItem(checkList : CheckList, inout inMyList list : List) {
//        list = list | checkList
//    }
    
    func check(item : CheckList, myList : List) -> Bool {
       let t = 1 > 0 ?? true : false
    }
}
