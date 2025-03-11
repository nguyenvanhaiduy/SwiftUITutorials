//
//  Landmark.swift
//  SwiftUITutorials
//
//  Created by Hai Duy on 6/3/25.
//

import Foundation //  là framework cơ bản của Swift, cung cấp các kiểu dữ liệu và chức năng cốt lõi như :
// + Xử lý chuỗi, Xử lý ngày tháng, Xử lý mã hoá(Encoding/Decoding - JSON, Property, List,...) là nền tảng cho hầu hết các chức năng cơ bản trong Swift.

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName : String
    // khai báo biến image là private vì nhứng lớp sử dụng (consumer) của Landmark chỉ cần quan tâm tói hình ảnh đã load chứ không cần biết tên file
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    // tạo một computed property tên là locationCoordinate, giúp chuyển đổi dữ liệu toạ độ thành CLLocationCoordinate2D, phục vụ cho việc tương tác với MapKit framework
    
    struct Coordinates: Hashable, Codable  {
        var latitude: Double
        var longitude: Double
    }
}
