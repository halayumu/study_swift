func method(input: Int, closure: ((Int) -> Void)) {
    let value = 10
    closure(value + input)
}

method(input: 5) { result in
    print(result)
}
