//
//  RequestParameter.swift
//  PlayerRecord
//
//  Created by 60156056 on 2023/05/15.
//

import Foundation

public protocol RequestParameter: Encodable {
    var dictionary: [String: String]? { get }
}

public extension RequestParameter {
    var dictionary: [String: String]? {
        return (try? JSONEncoder().encode(self))
            .flatMap { try? JSONSerialization.jsonObject(with: $0) as? [String: String] }
    }
}
