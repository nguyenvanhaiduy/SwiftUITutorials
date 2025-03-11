//
//  CircleImage.swift
//  SwiftUITutorials
//
//  Created by Hai Duy on 6/3/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: landmarks[0].image)
}
