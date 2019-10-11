//
//  Strains.swift
//  Medijuana
//
//  Created by Joanna Ingram on 10/10/19.
//  Copyright © 2019 Joanna Ingram. All rights reserved.
//

import Foundation

struct Strains {
    private var favouriteStrains: [name: String, id: int, race: String, flavours:[], effects: [positive: [String], negative: [String]], medical: [String]] = [ ]
    
    let products: [Category : [Product]] = [
        .dairy: [
            Product(name: "Milk", category: .dairy),
            Product(name: "Butter", category: .dairy)
        ],
        .vegetables: [
            Product(name: "Cucumber", category: .vegetables),
            Product(name: "Lettuce", category: .vegetables)
        ]
    ]
    
    private var count = 0
    
    init() {
        populateStrains()
    }
    
    mutating func populateStrains() {
        
        "Afpak":{"id":1,"race":"hybrid","flavors":["Earthy","Chemical","Pine"],"effects":{"positive":["Relaxed","Hungry","Happy","Sleepy"],"negative":["Dizzy"],"medical":["Depression","Insomnia","Pain","Stress","Lack of Appetite"]}}
        
        var strain = ("Magician", Category.FANTASY.emoji)
        favouriteStrains.append(book)
        strain = ("Silverthorn", Category.ADVENTURE.emoji)
        favouriteStrains.append(book)
        strain = ("Darkness at Sethanon", Category.MYSTERY.emoji)
        favouriteStrains.append(book)
        strain = ("Bourne Identity", Category.THRILLER.emoji)
        favouriteStrains.append(book)
    }
    
    mutating func getNextStrain() -> (name: String, category: String) {
        
        let strain = favouriteStrains[count]
        
        if(count == favouriteStrains.count - 1){
            count = 0
        }
        else {
            count += 1
        }
        
        return strain
    }
}
