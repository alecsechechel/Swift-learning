// Homework 18 Наследование
//part1
import Darwin

class Artist {
    var firstName : String
    var lastName : String
    
    func action() {
        println("Artist play")
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Dancer: Artist {
    override func action() {
        println("Dancer tanzen!")
    }
}

class Shut: Artist {
    override func action() {
        println("Shut entertains")
    }
}

class Painter: Artist {
    
    override func action() {
        println("Painter draws")
    }
    
    override var firstName : String {
        set {
            super.firstName = "Unknow Name"
        }
        get {
            return super.firstName
        }
        
    }
}
let artist = Artist(firstName: "Alex", lastName: "Pavlov")
let dancer = Dancer(firstName: "Andrey", lastName: "Petrenko")
let shut = Shut(firstName: "Kola", lastName: "Chex")
let painter = Painter(firstName: "Igor", lastName: "Petrenko")

let array = [artist, dancer, shut, painter]

for object in array {
    object.action()
}

painter.firstName = "Alex"
painter.firstName


//part2
//Несколько дочерних классов (самолет, корабль, вертолет, машина, поезд) с переопределенными свойствами (для каждого своя скорость вместимость и стоимость). Создать по одному объекту каждому дочернему классу. У всех есть метод, который что-то расчитывает (скорость, расстояние, количество пассажиров), конкретно сколько уйдет денег и времени, чтобы перевести определенное количество человек из пункта А в пункт В. При перевозке 100 и 1000 человек ответить на следующие вопросы:
//-Как быстро мы сможем это сделать и каким транспортом?
//-Стоимость всех перевозок и количество?
//-Какой транспорт быстрее справится и какой более выгодный?
class Vehicle {
    var speed : Double {
        return 0
    }
    var capacity : Int {
        return 0
    }
    var price : Double {
        return 0
    }
    func ticket(#length: Double, peoples : Int) -> (time: Double, money:Double) {
        let time = length / speed
        var count = peoples as Double / capacity as Double
        let dob: Double = a / b
            count = ceil(count)
        if peoples/capacity < 1.0 {
            let money = (time * price)/(peoples/capacity)
        }
        
        return (0.0, 0)
    }
}

class Plane: Vehicle {
    override var speed : Double  {
        return 850
    }
    override var capacity : Int {
        return 158
    }
    override var price : Double {
        return 300
    }
}

class Ship: Vehicle {
    override var speed : Double  {
        return 30
    }
    override var capacity : Int {
        return 1000
    }
    override var price : Double {
        return 50
    }
}

class Helicopter: Vehicle {
    override var speed : Double  {
        return 600
    }
    override var capacity : Int {
        return 8
    }
    override var price : Double {
        return 400
    }
}

class Auto: Vehicle {
    override var speed : Double  {
        return 150
    }
    override var capacity : Int {
        return 5
    }
    override var price : Double {
        return 20
    }
}

class Train: Vehicle {
    override var speed : Double  {
        return 80
    }
    override var capacity : Int {
        return 400
    }
    override var price : Double {
        return 10
    }
}

ceil(10.2)
let dob: Double = 5/2





