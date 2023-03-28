//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Nick Norred on 3/27/23.
//

import Foundation


/// Object that represents single API call
final class RMRequest{
    /// API Constants - we're taking this base url and adding onto using for loops
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    /// This equals our RMEndpoint object {case character, location, episode}
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    /// Set is used to store distinct values unordered, good when items need to appear only once or order isn't important
    private let pathComponents: Set<String>
    
    /// Query argyments for API, if any
    private let queryParameters: [URLQueryItem]
    
    
    ///Constructed URL for the API request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
       
        //will loop over them and put a trailing slash
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
             
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil } 
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        
        return string
    }
    
    
    /// Computerd & constructed
    public var url: URL? {
        return URL(string: urlString)
        
    }
    
    public let httpMethod = "GET"
    
    //MARK: - public
    
    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
    
    
    
}

