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
    
    var new = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        findField.delegate = self
        findField.layer.borderWidth = 2
        findField.text = "신조어를 검색해보세요"
        findField.clearsOnBeginEditing = true
        findField.keyboardType = .default
    
        //magnifyingglass
        findButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        findButton.backgroundColor = .black
        
        //0520 함수를 이용하여 코드 간소화
        buttonname(newOneButton,textName: "스불재")
//        newOneButton.setTitle("스불재", for: .normal)
//        newOneButton.setTitleColor(.black, for: .normal)
//        newOneButton.titleLabel?.font = .systemFont(ofSize: 13)
//        newOneButton.layer.cornerRadius = 10
//        newOneButton.layer.borderWidth = 2
        buttonname(newTwoButton,textName: "복복복")
        buttonname(newThreeButton,textName: "추구미")

        textLabel.textAlignment = .center
        
        textBackImage.image = UIImage(named: "background")
        textBackImage.contentMode = .scaleToFill
        
        textLabel.text = "신조어 뜻풀이"
        
    }
    //0525 함수를 이용하여 반복적인 코드 줄이기 (버튼설정 및 제목)
    func buttonname(_ buttonTitle: UIButton, textName : String){
        buttonTitle.setTitle(textName, for: .normal)
        buttonTitle.setTitleColor(.black, for: .normal)
        buttonTitle.titleLabel?.font = .systemFont(ofSize: 13)
        buttonTitle.layer.cornerRadius = 10
        buttonTitle.layer.borderWidth = 2
    }
    //0525 함수를 이용하여 반복적인 코드 줄이기
    //신조어가 일치하면 뜻풀이 나오게 함
    func newword(){
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
    //0520 빈화면클릭시키보드내리기
    @IBAction func mainViewClicked(_ sender: UITapGestureRecognizer) {
        //
        view.endEditing(true)
    }
    
    //0525 키보드 return키 누르면 키보드 내리기
    //UIButton, TextField 한번에 연결
    @IBAction func keyboardDissmiss(_ sender: Any) {
        view.endEditing(true)
        new = findField.text!
        newword()
        
    }

    @IBAction func selectButtonTapped(_ sender: UIButton) {
        new = newOneButton.title(for: .normal)!
        textLabel.textAlignment = .center
        newword()
    }
    @IBAction func selectButton2Tapped(_ sender: UIButton) {
        new = newTwoButton.title(for: .normal)!
        newword()
    }
    
    @IBAction func selectButton3Tapped(_ sender: UIButton) {
        new = newThreeButton.title(for: .normal)!
        newword()
    }
}
