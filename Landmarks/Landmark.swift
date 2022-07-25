//
//  Landmark.swift
//  Landmarks
//
//  Created by Samuel Baraka on 25/07/2022.
//

import Foundation

struct Landmark: Hashable, Codable{
    var Id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
