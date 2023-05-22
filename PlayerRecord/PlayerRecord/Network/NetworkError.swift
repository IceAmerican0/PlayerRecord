//
//  NetworkError.swift
//  PlayerRecord
//
//  Created by 박성준 on 2023/05/11.
//

import Foundation

public enum NetworkError: Error {
    case invalidateURL
    case invalidStatusCode
    case noConnectedInternet
    case emptyResponse
    case error(Error)
    case invalidateError
    
    static func statusCodeError(statuscode code: Int) -> NetworkError? {
        switch code {
        case 200 ..< 300: return nil
        default: return .invalidateError
        }
    }
}
