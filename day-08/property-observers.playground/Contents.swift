import UIKit

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            // executa o bloco sempre que a propriedade for alterada
            print("\(task) is now \(amount)% completed.")
        }
    }
}

var progress = Progress(task: "Loading Data", amount: 0)

progress.amount = 20
progress.amount = 50
progress.amount = 100
