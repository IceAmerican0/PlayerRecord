//
//  LOLSummonerByNameModel.swift
//  PlayerRecord
//
//  Created by 60156056 on 2023/05/24.
//

import Foundation

public struct LOLSummonerbyNameModel: Codable, Identifiable {
    public let id: String
    public let accountId: String
    public let puuid: String
    public let name: String
    public let profileIconId: Int
    public let revisionDate: Int
    public let summonerLevel: Int
}
