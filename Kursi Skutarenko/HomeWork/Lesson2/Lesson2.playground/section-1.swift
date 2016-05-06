// Home work lesson 2

print("Integer\n")
print("Int8 - min = \(Int8.min) max = \(Int8.max)")
print("UInt8 - min = \(UInt8.min) max = \(UInt8.max)")
print("Int16 - min = \(Int16.min) max = \(Int16.max)")
print("UInt16 - min = \(UInt16.min) max = \(UInt16.max)")
print("Int32 - min = \(Int32.min) max = \(Int32.max)")
print("UInt32 - min = \(UInt32.min) max = \(UInt32.max)")
print("Int - min = \(Int.min) max = \(Int.max)")

let intConst = 2
let floatConst: Float = 5.2
let doubleConst = 8.5

let intResult = Int(Double(intConst) + Double(floatConst) + doubleConst)
print("Result int \(intResult)")
let floatResult = Float(intConst) + floatConst + Float(doubleConst)
print("Result float \(floatResult)")
let doubleResult = Double(intConst) + Double(floatConst) + doubleConst
print("Result double \(doubleResult)\n")

if doubleResult > Double(intResult) {
    print("Double is more exact!")
} else {
    print("Double equally Int")
}
