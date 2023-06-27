//
//  ContentView.swift
//  kakaoMG
//
//  Created by 민근의 mac on 2023/06/24.
//

import SwiftUI

struct ContentView: View {
    
    //고차함수 이용
    
    //let totalChatNum = chats.reduce(0) { $0 + $1.chatNum }
    
    //reduce를 이용해 chats의 각 배열요소를 순서대로 처리 초기값 = 0
    //$0 : 누적값
    //$1.chatNum : 현재 배열 요소 값
    //ex) [0,1,2] = 1.0+0 2.0+1 3.1+2
    
    @State private var selection = 2 //탭 시작값
   
    var totalNum: Int {
        get {
            var num: Int = 0
            for chat in chats {
                num += chat.chatNum 
            }
            return num
        }
    }
    init() {
        UITabBar.appearance().backgroundColor = .black //탭뷰의 배경색
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray //클릭안된 아이템 색
    }
    var body: some View {
        
        VStack {
            TabView(selection: $selection) {
                
                // 친구 탭
                FriendsView()
                    .tabItem {
                        
                        Image(systemName: "person")
                        FriendsView()
                        
                    }.tag(1)
                // 채팅 탭
                ChatView()
                    .badge(totalNum) // 뱃지
                    .tabItem {
                        Image(systemName: "message")
                        ChatView()
                        
                    }.tag(2)
                
                // 오픈채팅 탭
                OpenChatView()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                        OpenChatView()
                        
                    }.tag(3)
                
                // 쇼핑 탭
                ShoppingView()
                    .tabItem {
                        Image(systemName: "bag")
                        ShoppingView()
                        
                    }.tag(4)
                
                // 더보기 탭
                SettingView()
                    .tabItem {
                        Image(systemName: "ellipsis")
                        SettingView()
                        
                    }.tag(5)
            }.accentColor(.white) // 선택된 탭의 아이콘 컬러 설정
            
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
