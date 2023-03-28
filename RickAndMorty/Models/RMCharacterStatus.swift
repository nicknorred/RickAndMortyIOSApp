//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Nick Norred on 3/27/23.
//

import Foundation


enum RMCharacterStatus: String, Codable{
    //Alive, dead, unknown
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
