struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var me = Alien(name: "Yo", height: 4.40, homePlanet: "Earth")

me.name = "Jake"
me.height = 1.42
me.homePlanet = "Saturn"


class Giant {
    var name: String
    var weight: Double
    let homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"

edgar.name
jason.name

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"

charles.homePlanet
charlesFromJupiter.homePlanet


struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        self.balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

var myAcct = BankAccount(owner: "Nick", balance: 123000.00)

myAcct.balance

myAcct.deposit(100)

myAcct.balance
myAcct.withdraw(100)

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

joeAccount.balance
joeOtherAccount.balance

class MusicLibrary {
    var tracks: [String]
    
    init() {
        self.tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

print(library1.tracks)
print(library2.tracks)

