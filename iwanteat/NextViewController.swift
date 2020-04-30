//
//  NextViewController.swift
//  iwanteat
//
//  Created by SWUCOMPUTER on 2020/04/27.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var pickerBuilding: UIPickerView! // 건물 picker
    @IBOutlet var fiftyView: UIView! // 50주년기념관뷰
//    @IBOutlet var seeBeverageLabel: UILabel! // 음료만 보기 라벨
//    @IBOutlet var beverageSwitch: UISwitch! // 음료만 보기 스위치
    @IBOutlet var buildLabel: UILabel! // 건물 라벨
    @IBOutlet var selectButton: UIButton! // 건물 선택 버튼
    
    let buildingArray: Array<String> = ["50주년 기념관", "인사대", "대강당", "누리관", "샬롬하우스"] // pickerview에 들어갈 목록
    @IBAction func getValue() {// picker별 건물 라벨 표시
        let build: String = buildingArray[self.pickerBuilding.selectedRow(inComponent: 0)]
        buildLabel.text = build + " 리스트"
        if build == "50주년 기념관" { // 50주년 기념관 선택 시 50주년뷰 활성화
            self.fiftyView.isHidden = false
        } else { // 다른 건물일 경우 50주년 리스트 끔
            self.fiftyView.isHidden = true
        }
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    } // 1개의 항목
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return buildingArray.count
    } // 빈 picker의 컴포넌트 개수 생성
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return buildingArray[row]
    } // 빈 picker의 row에 건물 이름들 채움
    
    // 건물별 음식 리스트 띄우도록 uiview 조정
    @IBOutlet var starbucks: UIButton! // 스타벅스 버튼
    @IBOutlet var touslesjours: UIButton! // 뚜레쥬르 버튼
    @IBOutlet var gamtan: UIButton! //감탄떡볶이 버튼
    @IBOutlet var onigiri: UIButton! //오니기리와 이규동 버튼
    @IBOutlet var cu: UIButton! // CU 버튼
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.fiftyView.isHidden = true // 화면이 실행될 때 50주년기념관뷰 꺼져있음
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
