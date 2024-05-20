//
//  FindViewController.swift
//  sesacweek1_5
//
//  Created by 여누 on 5/19/24.
//

import UIKit

class FindViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var findField: UITextField!
    
    @IBOutlet var findButton: UIButton!
    
    @IBOutlet var newOneButton: UIButton!
    @IBOutlet var newTwoButton: UIButton!
    @IBOutlet var newThreeButton: UIButton!
    
    @IBOutlet var textLabel: UILabel!
    
    @IBOutlet var textBackImage: UIImageView!
    
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //빈 화면 클릭 시 키보드 내림
        //self.view.endEditing(true)
        
        findField.delegate = self
        findField.layer.borderWidth = 2
        findField.text = "신조어를 검색해보세요"
        findField.clearsOnBeginEditing = true
        findField.keyboardType = .default
    
        //magnifyingglass
        findButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        findButton.backgroundColor = .black
        
        newOneButton.setTitle("스불재", for: .normal)
        newOneButton.setTitleColor(.black, for: .normal)
        newOneButton.titleLabel?.font = .systemFont(ofSize: 13)
        newOneButton.layer.cornerRadius = 10
        newOneButton.layer.borderWidth = 2
        
        newTwoButton.setTitle("복복복", for: .normal)
        newTwoButton.setTitleColor(.black, for: .normal)
        newTwoButton.titleLabel?.font = .systemFont(ofSize: 13)
        newTwoButton.layer.cornerRadius = 10
        newTwoButton.layer.borderWidth = 2
        
        newThreeButton.setTitle("추구미", for: .normal)
        newThreeButton.setTitleColor(.black, for: .normal)
        newThreeButton.titleLabel?.font = .systemFont(ofSize: 13)
        newThreeButton.layer.cornerRadius = 10
        newThreeButton.layer.borderWidth = 2
        
        textLabel.textAlignment = .center
        
        textBackImage.image = UIImage(named: "background")
        textBackImage.contentMode = .scaleToFill
        
        textLabel.text = "신조어 뜻풀이"
        

        

    }
    //0520 빈화면클릭시키보드내리기
    @IBAction func mainViewClicked(_ sender: UITapGestureRecognizer) {
        //
        view.endEditing(true)
    }
    
    //return키 누르면 키보드 내리기
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        findField.endEditing(true)
        //print(findField.text!)
        findField.text = findField.text
       
        
        let new = findField.text
        textLabel.textAlignment = .center
        
        if new == "기나죄" {
            textLabel.text = "기분 나빴으면 죄송합니다."
        }else if new == "스불재" {
            textLabel.text = "스스로 불러온 재앙"
        }else if new == "중꺾마" {
            textLabel.text = "중요한 건 꺾이지 않는 마음"
        }else if new == "오뱅알" {
            textLabel.text = "오늘 뱅송(방송) 알찼다"
        }else if new == "추구미" {
            textLabel.text = "내가 추구하는 이미지"
        }else if new == "복복복" {
            textLabel.text = "사랑스럽게 쓰다듬을 때 의성어"
        }else {
            textLabel.text = "존재하지 않는 신조어입니다."
        }
        return true
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
    

    @IBAction func textFieldTapped(_ sender: UITextField)  {
        //findField.endEditing(true)
        //return true
        print("textFieldTapped \(findField.text!)")
    }
    

    @IBAction func findButtonTapped(_ sender: UIButton) {
        findField.endEditing(true)
        
        let new = findField.text
        textLabel.textAlignment = .center
        
        if new == "기나죄" {
            textLabel.text = "기분 나빴으면 죄송합니다."
        }else if new == "스불재" {
            textLabel.text = "스스로 불러온 재앙"
        }else if new == "중꺾마" {
            textLabel.text = "중요한 건 꺾이지 않는 마음"
        }else if new == "오뱅알" {
            textLabel.text = "오늘 뱅송(방송) 알찼다"
        }else if new == "추구미" {
            textLabel.text = "내가 추구하는 이미지"
        }else if new == "복복복" {
            textLabel.text = "사랑스럽게 쓰다듬을 때 의성어"
        }else {
            textLabel.text = "존재하지 않는 신조어입니다."
        }

        }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        let new = newOneButton.title(for: .normal)
        textLabel.textAlignment = .center
        
        if new == "기나죄" {
            textLabel.text = "기분 나빴으면 죄송합니다."
        }else if new == "스불재" {
            textLabel.text = "스스로 불러온 재앙"
        }else if new == "중꺾마" {
            textLabel.text = "중요한 건 꺾이지 않는 마음"
        }else if new == "오뱅알" {
            textLabel.text = "오늘 뱅송(방송) 알찼다"
        }else if new == "추구미" {
            textLabel.text = "내가 추구하는 이미지"
        }else if new == "복복복" {
            textLabel.text = "사랑스럽게 쓰다듬을 때 의성어"
        }else {
            textLabel.text = "존재하지 않는 신조어입니다."
        }
    }
    @IBAction func selectButton2Tapped(_ sender: UIButton) {
        let new = newTwoButton.title(for: .normal)
        textLabel.textAlignment = .center
        
        if new == "기나죄" {
            textLabel.text = "기분 나빴으면 죄송합니다."
        }else if new == "스불재" {
            textLabel.text = "스스로 불러온 재앙"
        }else if new == "중꺾마" {
            textLabel.text = "중요한 건 꺾이지 않는 마음"
        }else if new == "오뱅알" {
            textLabel.text = "오늘 뱅송(방송) 알찼다"
        }else if new == "추구미" {
            textLabel.text = "내가 추구하는 이미지"
        }else if new == "복복복" {
            textLabel.text = "사랑스럽게 쓰다듬을 때 의성어"
        }else {
            textLabel.text = "존재하지 않는 신조어입니다."
        }
    }
    
    @IBAction func selectButton3Tapped(_ sender: UIButton) {
        let new = newThreeButton.title(for: .normal)
        textLabel.textAlignment = .center
        
        if new == "기나죄" {
            textLabel.text = "기분 나빴으면 죄송합니다."
        }else if new == "스불재" {
            textLabel.text = "스스로 불러온 재앙"
        }else if new == "중꺾마" {
            textLabel.text = "중요한 건 꺾이지 않는 마음"
        }else if new == "오뱅알" {
            textLabel.text = "오늘 뱅송(방송) 알찼다"
        }else if new == "추구미" {
            textLabel.text = "내가 추구하는 이미지"
        }else if new == "복복복" {
            textLabel.text = "사랑스럽게 쓰다듬을 때 의성어"
        }else {
            textLabel.text = "존재하지 않는 신조어입니다."
        }
    }
}
