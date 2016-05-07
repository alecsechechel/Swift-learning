// Lesson 10 Function DRY

func calculateMoney(inWallet wallet: [Int], type: Int? = nil) -> (sum:Int, count:Int) {
    var sum = 0
    var count = 0
    
    for value in wallet {

        if  (type == nil) || (value == type!) {
            sum += value
            count += 1
        }
    }
    
    return (sum, count)
}

func calculateMoney(inSequance range: Int...) -> Int {
    var sum = 0
    
    for value in range {
        sum += value
    }
    
    return sum
}

func sayHi() {
    print("Hi")
}

func sayPhrase(phrase: String) -> Int? {
    print(phrase)
    return 0
}

func doSomething(whatToDo:()->()) {
    whatToDo()
}

let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]



let sum = calculateMoney(inWallet: wallet, type: 100)
sum.sum
calculateMoney(inWallet: wallet, type: 100).count

calculateMoney(inSequance: 5,7,100,2)
let hi: () -> () = sayHi
hi()
let phrase = sayPhrase
phrase("bbb")


