//Lesson 22 about ARC
//

import Foundation

var playground = true

class Human {
    var name : String
    init (name: String) {
        self.name = name
    }
}

func namesKinders(#kinders: [Kind]) -> (String) {
    var nameKinders = ""
    for kind in kinders {
        nameKinders += kind.name + ","
    }
    return nameKinders
}

class Family {
    
    var father : Father
    var mother : Mother
    var kinders : [Kind]
    
    init (father: Father, mother: Mother, kinders: [Kind]) {
        self.father = father
        self.mother = mother
        self.kinders = kinders
        
        for kind in kinders {
            
        }
    }
    
    convenience init(father: Father) {
        self.init(father:father, mother: father.mother, kinders: father.mother.kinders)
    }
    
    func printFamily() {
        println("Father: \(father.name), mother: \(mother.name)")
    }
    
}

class Father : Human {
    
    var mother : Mother!
    
    weak var family : Family!
    
    deinit {
        println("Father \(self.name) buy")
    }
    
    lazy var printFamily: () -> () = {
        [unowned self] in
        self.family.printFamily()
    }
    
    lazy var printMother: () -> () = {
        [unowned self] in
        println("Mother: \(self.mother.name)")
    }
    
    lazy var printKinders: () -> () = {
        [unowned self] in
        println("Kinders: \(namesKinders(kinders: self.mother.kinders))")
    }
    
}

class Mother : Human {
    
    weak var family : Family!
    weak var father : Father!
    var kinders = [Kind]()
    
    
    deinit {
        println("Mather \(self.name) buy")
    }
    
}

class Kind : Human {
    
    unowned var father : Father
    unowned var mother : Mother
    weak var family : Family!
    
    var kinders: [Kind] {
        return family.kinders
    }
    
    init(name: String, father: Father, mother: Mother) {
        self.father = father
        self.mother = mother
        super.init(name: name)
        
        mother.kinders.append(self)
    }
    
    deinit {
        println("Kinder - \(self.name) buy")
    }
}


if playground {
    let father = Father(name: "Papa")
    let mother = Mother(name: "Mama")
    let kind1 = Kind(name: "Vova", father: father, mother: mother)
    let kind2 = Kind(name: "Peta", father: father, mother: mother)
    
    father.mother = mother
    
    let family = Family(father: father)
    println(father.name)
    println(mother.name)
    println(kind1.name)
    
    father.family = family
    family.printFamily()
    father.printFamily()
    father.printMother()
    father.printKinders()
    
    println("exit playground")
}

println("end")
