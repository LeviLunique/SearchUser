//
//  APIError.swift
//  SearchUser
//
//  Created by user204006 on 12/7/21.
//

import Foundation

enum APIError: Error, CustomStringConvertible {
    case badURL
    case badResponse(statusCode: Int)
    case url(URLError?)
    case parsing(DecodingError?)
    case unknown
    
    var localizedDescription: String {
         // user feedback
        switch self {
        case .badURL, .parsing, .unknown:
             return "Sorry, something went wrong."
        case .badResponse(_):
            return "Sorry, the connection to our server failed."
        case .url(let error):
            return error?.localizedDescription ?? "Something went wrong."
        }
    }
    
    var description: String {
        // info for debugging
        switch self {
        case .badURL:
            return "invalid URL"
        case .badResponse(let statusCode):
            return "bad response with status code \(statusCode)"
        case .url(let error):
            return error?.localizedDescription ?? "url session error"
        case .parsing(let error):
            return "parsing error \(error?.localizedDescription ?? "")"
        case .unknown:
            return "unknow error"
        }
    }
}
