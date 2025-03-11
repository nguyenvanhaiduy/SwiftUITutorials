//
//  ModelData.swift
//  SwiftUITutorials
//
//  Created by Hai Duy on 6/3/25.
//

import Foundation

var landmarks : [Landmark] = load("landmarkData.json")

// Hàm này giúp đọc dữ liệu từ file JSON trong bundle và chuyển thành kiểu dữ liệu mong muốn
// <T: Decodable>: hàm này nhận một kiểu dữ liệu bất kì T, mã là kiểu đó tuân theo giao thức Decodable(có thể giải mã từ JSON)
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) // tìm đường dẫn của file JSON trong main bundle
    else {
        fatalError("Couldn't find \(filename) in main bundle.") // nếu không thấy file ctrinh sẽ báo lõi và dùng bằng fatalError
    }
    
    do {
        data = try Data(contentsOf: file) // Đọc toàn bộ dữ liệu từ file JSON
    } catch{
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder() // Tạo một bộ giải mã JSON
        return try decoder.decode(T.self, from: data) // decoder.decode(T.self ,from: data): Chuyển dữ liệu JSON thành kiểu T (trong trường hợp này là Landmark.
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
