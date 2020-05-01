//
//  OptionViewController.swift
//  iwanteat
//
//  Created by SWUCOMPUTER on 2020/04/30.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OptionViewController: UIViewController, UITextFieldDelegate {

//    var name: String?
    // 뒤로가기 누르고 다시 돌아오면 라벨이 변경값이 아닌 김슈니인 문제 발생.-> 제대로 데이터 가져오기가 안됨!! 뷰컨트롤러의 순서를 바꿔야되나? -> 바꿨다..근데 바꿔도 똑같다...
    
    @IBOutlet var currentName: UILabel! // 현재 이름 라벨
    @IBOutlet var currentName2: UILabel! // 현재 이름 표시
    @IBOutlet var userName: UILabel! // 이름 설정 라벨
    @IBOutlet var writeName: UITextField! // 이름쓰는 텍스트 필드
    @IBOutlet var saveName: UIButton! // 이름 저장 버튼
    @IBAction func saveName(_ sender: Any) { // 저장 버튼 클릭시
        if writeName.text == "" {
            currentName2.text = "김슈니"
        } else {
            currentName2.text = writeName.text
//            name = currentName2.text
        }
    }
    
    @IBOutlet var nextButton: UIButton! // 다음 화면으로 버튼
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toView" {
            let VC = segue.destination as! ViewController
            if let letName = currentName2.text { // 옵셔널 변수이므로 옵셔널 바인딩
                VC.myName = letName
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // 키보드 처리
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
