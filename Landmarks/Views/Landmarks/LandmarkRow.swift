//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 신지혜 on 6/12/24.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}


//#Preview ("Turtle Rock"){
//    LandmarkRow(landmark: landmarks[0])
//}
//
//#Preview ("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
    }
}
