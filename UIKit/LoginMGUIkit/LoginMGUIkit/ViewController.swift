//
//  ViewController.swift
//  LoginMGUIkit
//
//  Created by 민근의 mac on 2023/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var agreeToggle: UISwitch!
    @IBOutlet weak var resultLabel: UILabel!
    
  
    
     var loginAgree: Bool = false
     private var isValidEmail: Bool = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        passwordLabel.isSecureTextEntry = true
        
        idLabel.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        passwordLabel.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        agreeToggle.isEnabled = false
    }
    
   
    
    @IBAction func signButton(_ sender: Any) {
        
        var userID: String = idLabel.text ?? ""
        var userPasswrod: String = passwordLabel.text ?? ""
        var message: String = ""
        
        isValidEmail = isValidEmailAddress(idLabel.text ?? "")
        
        
        if userID == "" || userPasswrod == ""  {
            message = "아이디, 비밀번호를 입력해주세요"
            resultLabel.text = message
        } else if agreeToggle.isOn == false {
            message = "로그인 동의를 해주세요"
            resultLabel.text = message
        } else if isValidEmail == false {
            message = "이메일 형식이 유효하지 않습니다"
            resultLabel.text = message
        } else {
            message = "아이디 : \(userID)\n비밀번호 : \(userPasswrod)"
            resultLabel.text = message
        }
        
        
    }
    
    
    func isValidEmailAddress(_ email: String) -> Bool {
            let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        //일반적인 이메일 주소 패턴
            let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex) //NSPredicate를 이용하여 주어진 문자열이 자기 자신과 정규식 패턴과 일치하는지를 평가
            return emailPredicate.evaluate(with: email) //입력한 이메일이 위의 정규식과 일치 불일치를 Bool값
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
            let text1 = idLabel.text ?? ""
            let text2 = passwordLabel.text ?? ""
            
            if !text1.isEmpty && !text2.isEmpty {
                agreeToggle.isEnabled = true
            } else {
                agreeToggle.isEnabled = false
            }
        }
}

