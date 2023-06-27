//
//  ChatView.swift
//  kakaoMG
//
//  Created by 민근의 mac on 2023/06/25.
//

import SwiftUI


struct ChatView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("채팅").foregroundColor(.white).bold().font(.largeTitle)
                Spacer()
                Image(systemName: "magnifyingglass").foregroundColor(.white) .imageScale(.large)
                Spacer().frame(width: 10)
                Image(systemName: "plus.message").foregroundColor(.white).imageScale(.large)
                Spacer().frame(width: 10)
                Image(systemName: "gearshape").foregroundColor(.white).imageScale(.large)
                
            }.padding()
            
            //상단
            
            List(chats) { chat in
                Button {
                    print("\(chat.id)")
                } label: {
                    HStack {
                        Image("\(chat.profileImg)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : 50 ,height: 50)
                            .clipped()
                            .cornerRadius(20)
                        
                        Spacer().frame(width: 20)
                        VStack (alignment: .leading){
                            Text("\(chat.userName)").foregroundColor(.white).bold()
                            Spacer().frame(height: 5)
                            Text("\(chat.content)").foregroundColor(.gray)
                        }
                        Spacer()
                        Spacer()
                        VStack(alignment: .trailing){
                            Text("\(chat.date)").foregroundColor(.gray)
                            Spacer().frame(height: 7)
                            ZStack { //뷰를 겹쳐 표시할때는 ZStack 맨위 코드가 가장 앞에 표시됨
                                
                                if chat.chatNum > 0 && chat.chatNum < 300 { // 챗넘이 0보다 클때만 생성
                                    Circle()
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.704, brightness: 0.971)) //커스텀 컬러
                                        .frame(width: 25, height: 25)
                                        
                                    
                                    Text("\(chat.chatNum)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 12))
                                        .bold()
                                    
                                } else if chat.chatNum >= 300 {
                                    Circle()
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.704, brightness: 0.971)) //커스텀 컬러
                                        .frame(width: 25, height: 25)
                                        
                                    
                                    Text("300+")
                                        .foregroundColor(.white)
                                        .font(.system(size: 12))
                                        .bold()
                                }
                               
                            }
                        }
                        
                    }.frame(maxHeight: 80) //80으로 고정시켜줌으로 두줄이상은 ...
                    
                }.listRowBackground(Color(hue: 1.0, saturation: 0.0, brightness: 0.166))
            }.listStyle(.plain)
        }.background(Color(hue: 1.0, saturation: 0.0, brightness: 0.166))
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
