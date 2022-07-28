//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Samuel Baraka on 28/07/2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks,id: \.id){ landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
