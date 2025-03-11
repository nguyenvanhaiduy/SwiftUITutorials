//
//  MapView.swift
//  SwiftUITutorials
//
//  Created by Hai Duy on 6/3/25.
//

import SwiftUI
import MapKit // là một framework của Apple dùng để làm việc với bản đồ
// giúp hiển thị bản đồ, lấy thông tin vị trí đường đi, Thêm các ghi chú, vẽ tuyến đường

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion { // Đây là một biến tính toán nó trả về kiểu MKCoordinateRegion
        MKCoordinateRegion( // là cấu trúc dữ liệu đại diện cho một khu vực trên bản đồ
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),// toạ độ trung tâm
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2) // pham vi zoom theo cả chiều ngang và chiều dọc
        )
    } // tóm lại cái này là chứ thông tin toạ độ và vùng zoom
}

#Preview {
    MapView()
}
