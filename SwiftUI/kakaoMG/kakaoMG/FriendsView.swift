//
//  FriendsView.swift
//  kakaoMG
//
//  Created by 민근의 mac on 2023/06/25.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        VStack{
            HStack {
                Text("친구").foregroundColor(.white).bold().font(.largeTitle)
                Spacer()
                Image(systemName: "magnifyingglass").foregroundColor(.white) .imageScale(.large)
                Spacer().frame(width: 10)
              
                Image(systemName: "gearshape").foregroundColor(.white).imageScale(.large)
                
            }.padding()
            Spacer()
            
        }.frame(maxWidth: .infinity , maxHeight: .infinity)
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.166))
        
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
