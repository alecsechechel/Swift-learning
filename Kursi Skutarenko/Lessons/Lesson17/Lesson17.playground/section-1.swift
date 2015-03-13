// Lesson 17 Subscripts

let array = ["a", "b", "c"]
array[0]

struct Family {
    var father = "Father"
    var mother = "Mother"
    var kids = ["Kid1", "Kid2", "Kid3"]
    
    var count : Int {
        return 2 + kids.count
    }
    
    subscript(index: Int) -> String? {
        get {
            switch(index) {
            case 0: return father
            case 1: return mother
            case 2..<(2 + kids.count): return kids[index - 2]
            default: return nil
            }
        }
        set {
            let value = newValue ?? ""
            switch(index) {
            case 0: return father = value
            case 1: return mother = value
            case 2..<(2 + kids.count): return kids[index - 2] = value
            default: break
            }
        }
    }
    
    subscript(index: Int, sufix: String) -> String? {
        var name = self[index] ?? ""
        name += " " + sufix
        return name
    }
    
}

var family = Family()
family.father
family.count

family[0]

family.kids[0]
family[4] = "Budy"
family[4]

family[3, "the greate"]
family[3]

struct Field {
    
    var dict = [String: String]()
    
    func keyForColumn(column: String, andRow row: Int) -> String{
        return column + String(row) + "a"
    }
    
    subscript(column: String, row: Int) -> String? {
    
        get {
            return dict[keyForColumn(column, andRow: row)]
        }
        set {
            dict[column + String(row)] = newValue
        }
    
    }
}

var field = Field()

field["a", 5]
field["a", 5] = "X"
field["a", 5]







