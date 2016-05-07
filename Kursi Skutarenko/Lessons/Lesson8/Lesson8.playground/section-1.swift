// Dictionary

var dict  = ["машина" : "car", "мужик" : "man"]
let dict1 = [String: String]()
//let dict2 = [0 : "car", 1 : "man"]

dict["машина"]
dict.count
dict.isEmpty

dict["комп"] = "computer"
dict.count
dict

dict.values
//dict["комп"] = "mac"
dict
dict.updateValue("mac", forKey: "комп")


let comp = dict["комп"] // return optional type!

//dict["мужик"] = nil
//dict.removeValueForKey("мужик")

//dict = [:] //remote all component

dict.isEmpty
dict["1"] = "one"
dict

for key in dict.keys {
    print("key = \(key), value = \(dict[key]!)")
}

print()

for (key, value) in dict {
    print("key = \(key), value = \(value)")
}




