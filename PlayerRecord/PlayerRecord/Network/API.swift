//
//  API.swift
//  PlayerRecord
//
//  Created by 박성준 on 2023/05/11.
//

import Foundation
import Combine

public enum API {
    
    struct request<T: RequestParameter> {
        var headers: [String: String]?
        var parameters: T?
        
        init(headers: [String: String]? = nil,
             parameters: T? = nil) {
            self.headers = headers
            self.parameters = parameters
        }
    }
    
    
}

extension API.request {
    func requestURL(url: URL, method: HTTPMethod) async throws -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.httpBody = parameters?
            .dictionary
            .flatMap { try? JSONSerialization.data(withJSONObject: $0) }
        
        headers.map {
            urlRequest.allHTTPHeaderFields?.merge($0) { lhs, _ in lhs }
        }
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return urlRequest
    }
}

public protocol NetworkServiceProtocol {
    func request(_ request: URLRequest) async throws -> (Data, URLResponse)
}

final class NetworkServiceData: NetworkServiceProtocol {
    func request(_ request: URLRequest) async throws -> (Data, URLResponse) {
        return try await URLSession.shared.data(for: request)
    }
}
