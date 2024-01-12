//
//  Model.swift
//  DogTinder
//
//  Created by Alisa Serhiienko on 12.01.2024.
//

import Foundation
import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let bio: String
    
   
    var degree: Double = 0.0
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    
    
    static var data: [Card] {
        [
            Card(name: "Coco", image: "Coco", bio: "Squeaky toy lover, tail wagger"),
            Card(name: "Duke", image: "Duke", bio: "Parkour pup, leaf rustler"),
            Card(name: "Charlie", image: "Charlie", bio: "Stick aficionado, grass grazer"),
            Card(name: "Daisy", image: "Daisy", bio: "Ballgame expert, snack aficionado"),
            Card(name: "Andre", image: "Andre", bio: "Sunny spot occupier, stick fanatic"),
            Card(name: "Max", image: "Max", bio: "Parkour expert, couch cuddler")
        ]
    }
}
