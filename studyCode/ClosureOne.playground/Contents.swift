//練習問題3
func method(closure: ((Int) -> Void)) {
  let value = 10
  closure(value)
}

method(closure: { (number: Int) in
    print(number)
})


