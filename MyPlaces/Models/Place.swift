//
//  Place.swift
//  MyPlaces
//
//  Created by Yuriy on 20.02.2023.
//

import UIKit

struct Place {
    let name: String?
    let location: String?
    let type: String?
    var image: UIImage?
    let restrauntImage: String?
    
    static let restaurantNames = [
        "Burger Heroes",
        "Kitchen",
        "Bonsai",
        "Дастархан",
        "Индокитай",
        "X.O",
        "Балкан Гриль",
        "Sherlock Holmes",
        "Speak Easy",
        "Morris Pub",
        "Вкусные истории",
        "Классик",
        "Love&Life",
        "Шок",
        "Бочка"
    ]
    
    static func getPlaces() -> [Place] {
        var places: [Place] = []
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "УФА", type: "Ресторан", image: nil, restrauntImage: place))
        }
        
        return places
    }
}
