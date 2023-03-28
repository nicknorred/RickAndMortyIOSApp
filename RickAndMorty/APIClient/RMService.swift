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
    ///   - typeL The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable> (
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
     
        
    }
}
