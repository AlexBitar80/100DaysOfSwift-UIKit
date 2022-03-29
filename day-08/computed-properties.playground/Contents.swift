import UIKit

// # Computed properties


struct Sports {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String { // verifica o código para descobrir seu valor.
       if isOlympicSport {
           return "\(name) is an Olympic sport"
       } else {
           return "\(name) is not an Olympic sport"
       }
    }
}

var tennis = Sports(name: "Tennis", isOlympicSport: true)
print(tennis.olympicStatus)
