struct MemberInformation {
    var name:String = "山田太郎"
    var gender:String = "男"
    var age:Int = 20
    var mail:String = "aaa@.com"
    var password:String = "a"
    var nickname:String?
    
     func showValue(){
        print(name)
        print(gender)
        print(age)
        print(mail)
        print(password)
        print(nickname)
    }
}

var member = MemberInformation()
member.showValue()
