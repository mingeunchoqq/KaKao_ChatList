//
//  Model.swift
//  kakaoMG
//
//  Created by 민근의 mac on 2023/06/24.
//

import Foundation


struct chatModel: Identifiable {
    var id: Int
    var profileImg: String
    var userName: String
    var content: String
    var date: String
    var chatNum: Int
}

 let chats: [chatModel] = [
    chatModel(id: 1 , profileImg: "001", userName: "카카오톡 선물하기", content: "교환권은 잘 사용하셨나요?\n소중한 후기를 남겨주세요.", date: "어제", chatNum: 350 ),
 
  chatModel(id: 2 ,profileImg: "002", userName: "투썸플레이스", content: "[투썸플레이스]\n고객님 주문하신 메뉴가 준비되었습니다 확인해주세요", date: "6월17일", chatNum: 5),
  chatModel(id: 3 ,profileImg: "003", userName: "니니즈 죠르디입니다", content: "(광고)고양이용사 라춘식 이번 주까지 할인가에 겟챠 춘식툰 속 디테일까지 모공모공", date: "6월16일" ,chatNum: 4),
  chatModel(id: 4 ,profileImg: "004", userName: "배스킨라빈스", content: "쿠폰이 지급되었습니다. 쿠폰번호를 확인해주세요!", date: "6월16일", chatNum: 3),
  chatModel(id: 5 ,profileImg: "005", userName: "이니스프리", content: "(광고)[LIVE] 서두르세요! 라이브 혜택은 오전 9시 50분까지만 적용됩니다!", date: "6월16일", chatNum: 1),
  chatModel(id: 6 ,profileImg: "006", userName: "원티스 WANTED", content: "[원티드] 추천 포지션 안내\n박서연님을 위한 개발 맞춤 포지션 안내드립니다", date: "6월15일",chatNum: 0),
  chatModel(id: 7 ,profileImg: "007", userName: "에잇세컨즈", content: "(광고)슈퍼세일 오픈! UP TO 50%", date: "6월15일", chatNum: 0),
  chatModel(id: 8 ,profileImg: "008", userName: "인프런", content: "(광고)와!! 인프런에서 'FE'stival 열렸다!!! 딱 2일 동안만 프로튼엔드 수강이 30프로 할인!", date: "6월15일" ,chatNum: 0)
  
  ]
                            

