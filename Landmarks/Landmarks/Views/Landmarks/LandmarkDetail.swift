//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Samuel Baraka on 28/07/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark : Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130)
            VStack(alignment:.leading) {
                HStack {
                    Text(landmark.name)
                        .font(.largeTitle)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
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
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
