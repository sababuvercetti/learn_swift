//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Samuel Baraka on 28/07/2022.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly=true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                                   Text("Favorites only")
                               }
                ForEach(filteredLandmarks){ landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)}label:{
                        LandmarkRow(landmark: landmark)
                    }
            }.navigationTitle("Landmarks")
            }}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
