//
//  Model.swift
//  JSON Parsing
//
//  Created by Jessica Darvell on 19/10/19.
//  Copyright © 2019 Jessica Darvell. All rights reserved.
//

import Foundation

struct Strains {
    
    //Creates empty tuple for our strains
    var strainsTuple:[(name: String, id: String, flavours:String, postive: String, negative: String, medical: String, favourite: Bool)]
    
    private var count = 0
    
//    init() {
//        populateStrains()
//    }
    
    //Populate the database (tuple)
    mutating func populateStrains() {
        var newStrain = ("Afpak", "1", "Earthy", "Relaxed", "Dizzy", "Depression", false)
        strainsTuple.append(newStrain)
        newStrain = ("Afpak", "2", "Earthy", "Relaxed", "Dizzy", "Depression", false)
        strainsTuple.append(newStrain)
    }
    
    // Function used to return individual strains via name
//    func getStrain(name:String) -> (name: String, id: String, flavours:String, postive: String, negative: String, medical: String, favourite: Bool) {
//        
//    }
    
    // Function to get the next strain
    mutating func getNextStrain() -> (name: String, id: String, flavours:String, postive: String, negative: String, medical: String, favourite: Bool) {
        
        let strain = strainsTuple[count]
        if(count == strainsTuple.count - 1){
            count = 0
        }
        else {
            count += 1
        }
        return strain
    }
    
    //Function is used to return Favourite list for favourite view.
//    func getFavourites() ->  {
//        var _:[(name: String, id: String, flavours:String, postive: String, negative: String, medical: String, favourite: Bool)]
//
//
//    }
    
    //Function called when the 'heart' is selected to add to favourites.
//    mutating func addToFavourites(Obj: Strain) {
//        let Strain = strain
//
//
//
//    }
    
    
    //Function called for search
    func searchResult() -> () {
        
        
    }
    
    
}

