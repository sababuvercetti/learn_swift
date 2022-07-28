//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Samuel Baraka on 28/07/2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks){ landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)}label:{
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 6", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
