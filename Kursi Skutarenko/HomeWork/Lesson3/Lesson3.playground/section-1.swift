// Tuples

var myPower = (pushUps: 50, tightening: 20, squats: 50)
print("My power \(myPower)")

print("I can \(myPower.0) push-ups!")
print("I can \(myPower.tightening) tightening!")
print("I can \(myPower.squats) squats!")

let myFriendsPower = (pushUps: 30, tightening: 15, squats: 30)
let (pushUps, tightening, squats) = myFriendsPower

var diffirincePower = myPower
diffirincePower.pushUps -= myFriendsPower.pushUps
diffirincePower.tightening -= myFriendsPower.tightening
diffirincePower.squats -= myFriendsPower.squats

print("Difference between myPower and my Friends is \(diffirincePower)")

myPower.pushUps = pushUps
myPower.tightening = tightening
myPower.squats = squats





