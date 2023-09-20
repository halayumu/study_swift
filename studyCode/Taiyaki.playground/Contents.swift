struct Taiyaki {
    var nakami = "あんこ"
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

let taiyaki1 = Taiyaki(nakami: "sakura")
taiyaki1.nedan()

