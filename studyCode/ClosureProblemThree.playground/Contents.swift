func method(input: String, completion: ((String) -> Bool)) {
    if completion(input) {
        print("文字があります")
    } else {
        print("空です")
    }
}


method(input: "") { text in
    return !text.isEmpty
}

method(input: "Hello") { text in
    return !text.isEmpty
}
