//
//  Codable.swift
//  PlayerRecord
//
//  Created by 박성준 on 2023/05/11.
//

import Foundation

struct AnyEncodable: Encodable {
    private let encodable: Encodable
    
    public init(_ encodable: Encodable) {
        self.encodable = encodable
    }
    
    func encode(to encoder: Encoder) throws {
        try encodable.encode(to: encoder)
    }
}
