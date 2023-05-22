//
//  HomeView.swift
//  PlayerRecord
//
//  Created by 박성준 on 2023/05/10.
//

import SwiftUI

enum gameList {
    case LOL
    case Valorant
    case R6
}

struct HomeView: View {
    var body: some View {
        VStack {
            HeadLineText()
            HStack {
                NavigationView {
                    List {
                        
                    }
                }
            }
        }
    }
}

struct HeadLineText: View {
    var body: some View {
        Text("Player Stats")
            .bold().font(Font(UIFont.systemFont(ofSize: 30)))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
