//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Samuel Baraka on 28/07/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130)
            VStack(alignment:.leading) {
                Text(landmark.name)
                    .font(.largeTitle).foregroundColor(.black)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                    
                }
                Divider()

                Text("About \(landmark.name)")
                                    .font(.title2)
                Text("\(landmark.description)")
                Spacer()
            }.padding()
            
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
