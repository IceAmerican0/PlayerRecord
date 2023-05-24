//
//  Urls.swift
//  PlayerRecord
//
//  Created by 60156056 on 2023/05/24.
//

import Foundation

public enum BaseURL {
    private static let https = "https://"
    
    private static let riot = "kr.api.riotgames.com/"
    
    private static let LOL = "lol/"
    private static let Valorant = "vr/"
    
    public enum LOLURL {
        public static let summonerSearchByNameDomain = "summoner/v4/summoners/by-name/"
        
        public static let summonerSearchByNameURL = "\(https)\(riot)\(LOL)\(summonerSearchByNameDomain)"
    }
    
    public enum ValorantURL {
        
    }
    
    public enum R6URL {
        
    }
}
