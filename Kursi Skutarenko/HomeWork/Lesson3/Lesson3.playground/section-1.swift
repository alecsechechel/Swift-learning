// Tuples


var myPower = (pushUps:50, tightening:20, squats:50)
println("My power \(myPower)")

println("I can \(myPower.0) push-ups!")
println("I can \(myPower.tightening) tightening!")
println("I can \(myPower.squats) squats!")

let myFriendsPower = (pushUps:30, tightening:15, squats:30)
let (pushUps, tightening, squats) = myFriendsPower

var diffirincePower = myPower
diffirincePower.pushUps -= myFriendsPower.pushUps
diffirincePower.tightening -= myFriendsPower.tightening
diffirincePower.squats -= myFriendsPower.squats

println("Difference between myPower and my Friends is \(diffirincePower)")

myPower.pushUps = pushUps
myPower.tightening = tightening
myPower.squats = squats





