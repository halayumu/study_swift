import UIKit

var num: Int? = 1


print(num!)

if let test = num{
    print(test)
}

func unwrapNum() {
    guard let unwrapNum = num else {
        return
    }
    print(unwrapNum)
}
unwrapNum()



