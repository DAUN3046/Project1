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
    @IBOutlet var daegangdangView: UIView! // 대강당뷰
    @IBOutlet var nurigwanView: UIView! // 학생누리관뷰
    
    @IBOutlet var buildLabel: UILabel! // 건물 라벨
    @IBOutlet var selectButton: UIButton! // 건물 선택 버튼
    
    let buildingArray: Array<String> = ["50주년 기념관", "대강당", "학생누리관"] // pickerview에 들어갈 목록
    @IBAction func getValue() {// picker별 건물 라벨 표시
        let build: String = buildingArray[self.pickerBuilding.selectedRow(inComponent: 0)]
        buildLabel.text = build + " 리스트"
        if build == "50주년 기념관" { // 50주년 기념관 선택 시 50주년뷰 활성화
            self.fiftyView.isHidden = false
        } else { // 다른 건물일 경우 50주년 리스트 끔
            self.fiftyView.isHidden = true
        }
        if build == "대강당" { // 대강당 선택 시 대강당뷰 활성화
            self.daegangdangView.isHidden = false
        } else { // 다른 건물일 경우 대강당 리스트 끔
            self.daegangdangView.isHidden = true
        }
        if build == "학생누리관" { // 학생누리관 선택 시 학생누리관뷰 활성화
            self.nurigwanView.isHidden = false
        } else { // 다른 건물일 경우 학생누리관 리스트 끔
            self.nurigwanView.isHidden = true
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
    
    // 50주년 음식점 리스트
    @IBOutlet var starbucks: UIButton! // 스타벅스 버튼
    @IBOutlet var touslesjours: UIButton! // 뚜레쥬르 버튼
    @IBOutlet var gamtan: UIButton! //  감탄떡볶이 버튼
    @IBOutlet var onigiri: UIButton! //오니기리와 이규동 버튼
    @IBOutlet var cu: UIButton! // CU 버튼
    
    // 대강당 음식점 리스트
    @IBOutlet var pandorothy: UIButton! // 팬도로시 버튼
    
    // 학생누리관 음식점 리스트
    @IBOutlet var etang: UIButton! // 에땅 버튼
    @IBOutlet var walnam: UIButton! // 월남선생 버튼
    @IBOutlet var attal: UIButton! // 아딸 버튼
    @IBOutlet var mangwun: UIButton! // 만권화밥 버튼
    @IBOutlet var choigodang: UIButton! // 최고당돈가스 버튼
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.fiftyView.isHidden = true // 화면이 실행될 때 50주년기념관뷰 꺼져있음
        //다른 건물들 뷰 추가!
        self.daegangdangView.isHidden = true // 화면이 실행될 때 대강당뷰 꺼져있음
        self.nurigwanView.isHidden = true // 화면이 실행될 때 학생누리관뷰 꺼져있음
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStarbucks" { // 스타벅스 선택시
            let destVC = segue.destination as! sorryViewController
            destVC.title  = "스타벅스"
        }
        if segue.identifier == "toTouslesjours" { // 뚜레쥬르 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "뚜레쥬르"
        }
        if segue.identifier == "toGamtan" { // 감탄 떡볶이 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "감탄떡볶이"
        }
        if segue.identifier == "toOnigiri" { // 오니기리와 이규동 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "오니기리와 이규동"
        }
        if segue.identifier == "toCu" { // CU 선택시
            let destVC = segue.destination as! sorryViewController
            destVC.title = "CU"
        }
        if segue.identifier == "toPandorothy" { // 팬도로시 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "팬도로시"
        }
        if segue.identifier == "toMangwun" { // 만권화밥 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "만권화밥"
        }
        if segue.identifier == "toWalnam" { // 월남선생 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "월남선생"
        }
        if segue.identifier == "toAttal" { // 아딸 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "아딸"
        }
        if segue.identifier == "toChoigodang" { // 최고당돈까스 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "최고당돈까스"
        }
        if segue.identifier == "toEtang" { // 에땅 선택시
            let destVC = segue.destination as! menuViewController
            destVC.title = "에땅"
        }
        
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
