//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Nick Norred on 3/27/23.
//

import Foundation


@frozen enum RMEndpoint: String {
    ///Endpoint to character info
    case character
    ///Endpoint to get location info
    case location
    ///Endpoint to get episode info
    case episode
}

