// Lesson 11 Clousers

let numbers = [4, 2, 12, 1, 89, 9, 5]

func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()
    for value in array {
        if f(value) {
            filtered.append(value)
        }
    }
    
    return filtered
}

func compare(i: Int) -> Bool {
    return i % 2 == 0
}

filterArray(numbers, compare)

filterArray(numbers, {(i: Int) -> Bool in
    return i % 2 == 0
})

filterArray(numbers, {(i : Int) -> Bool in
    return i % 3 == 0 })

// FIXME: aa
// TODO: fix it
let a = filterArray(numbers, {i in i % 2 == 0})
a
filterArray(numbers, {$0 % 2 == 0})
filterArray(numbers) {$0 % 3 == 0}

let array = [1, 2, 3, 4, 5]
var count = 0
let a4 =
filterArray(numbers) { value in
    
    for include in array {
        count++
        if include == value {
            return true
        }
    }
    return false
}
a4
count
count = 0
var dict = [Int: Bool]()
for value  in array {
    dict[value] = true
    count++
}

let a5 =
filterArray(numbers, { value in
    count++
    return dict[value] != nil
})
count



















