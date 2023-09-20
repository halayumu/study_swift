import UIKit

class Taiyaki {
    var nakami = "anko"
    func sayNakami(){
        print("中身は"+nakami+"です。")
    }

    func nedan () -> Int{
        switch nakami {
        case "anko":
            return 100
        case "kastard":
            return 120
        case "narutokintoki":
            return 140
        case "sakura":
            return 160
        default:
            return 0
        }
    }
}

var myTaiyaki = Taiyaki()
myTaiyaki.nakami = "sakura"
myTaiyaki.nedan()
