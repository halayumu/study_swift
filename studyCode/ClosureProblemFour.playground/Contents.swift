import Foundation
func method(input: String, completion: @escaping (String?) -> Void) { // [変更箇所] completionの型を(String?) -> Voidに変更
    let urlStr = "https://zipcloud.ibsnet.co.jp/api/search"
    let urlStrWithParameter = urlStr + "?zipcode=\(input)"
    
    guard let url = URL(string: urlStrWithParameter) else {
        print("不正な入力です")
        completion(nil) // [変更箇所] nilをcompletionの引数として実行
        return
    }
    
    let urlRequest = URLRequest(url: url)
    
    let session = URLSession.shared
    
    let dataTask = session.dataTask(with: urlRequest) { data, response, error in
        if let error = error {
            print("\(error): エラーです")
            completion(nil) // [変更箇所] nilをcompletionの引数として実行
            return
        }
        
        guard let data = data else {
            print("データがありません")
            completion(nil) // [変更箇所] nilをcompletionの引数として実行
            return
        }
        
        guard let responseStr = String(data: data, encoding: .utf8) else {
            print("サーバーから受け取ったデータをstringに変換できませんでした")
            completion(nil) // [変更箇所] nilをcompletionの引数として実行
            return
        }
        completion(responseStr) // [変更箇所] responseStrをcompletionの引数として実行
    }
    
    dataTask.resume()
}

// 関数の呼び出し
method(input: "1000014") { response in
    if let response = response {
        print(response)
    } else {
        print("通信エラーや不正なパラメータが存在します")
    }
}
