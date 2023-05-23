//
//  HomeView.swift
//  PlayerRecord
//
//  Created by 박성준 on 2023/05/10.
//

import SwiftUI

enum gameList: String, CaseIterable {
    case LOL = "LOL"
    case Valorant = "Valorant"
    case R6 = "R6"
}

struct HomeView: View {
    @State private var selection: gameList = .LOL
    @State private var nickName: String = ""
    
    var body: some View {
        VStack {
            SelectedMainView()
            
            HStack {
                TextField("Enter your nickName", text: $nickName)
            }
            
            HStack {
                ForEach(gameList.allCases, id: \.rawValue) { list in
                    Text(list.rawValue)
                }
            }
        }
    }
}

struct SelectedMainView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
