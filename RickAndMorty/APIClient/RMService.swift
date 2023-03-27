//
//  RMService.swift
//  RickAndMorty
//
//  Created by Nick Norred on 3/27/23.
//

import Foundation


/// Primary API service object to get Rick and Morty Data
final class RMService{
    
    /// Shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init(){}
    
    
    
    /// Send Rick and Mort API Call
    /// - Parameters:
    ///   - request: Request to instance
    ///   - completion: Callback with data or error
    public func execute (_ request: RMRequest, completion: @escaping () -> Void){
     
        
    }
}
