//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

var running = false
var author = ""
var data = AviatrixData()
var location = "St. Louis"
var displacement = 0
var fuelLevel = 5000.0
var milesPerGallon = 0.4

class Aviatrix {

    var running = false
    var author = ""
    var data = AviatrixData()
    var location = "St. Louis"
    var displacement = 0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var maxFuel =  5000.0
    
    init(authorInit : String) {
        author = authorInit
    }
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) -> String {
       
        displacement += distanceTo(target: destination)
        location = destination
        return location
    }
    
    func distanceTo(target : String) -> Int {

        return data.knownDistances[location]![target]!
    
    }
    
    func knownDestinations(target : String) -> [String] {
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
    

}

