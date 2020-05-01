//
//  menuViewController.swift
//  iwanteat
//
//  Created by SWUCOMPUTER on 2020/05/01.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {
    @IBOutlet var menuImage: UIImageView! // 메뉴 나타나는 이미지뷰
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // 이 아래로 이미지뷰 메뉴이미지 지정하는 코드
//        if self.title == "스타벅스" {// 업데이트시 추가
//            menuImage.image = UIImage(named: "starbucks_menu.png")
//        }
        if self.title == "뚜레쥬르" {
            menuImage.image = UIImage(named: "touslesjours_menu.png")
        }
        if self.title == "감탄떡볶이" {
            menuImage.image = UIImage(named: "gamtan_menu.png")
        }
        if self.title == "오니기리와 이규동" {
            menuImage.image = UIImage(named: "onigiri_menu.png")
        }
//        if self.title == "CU" { // 업데이트시 추가
//            menuImage.image = UIImage(named: "CU_menu.png")
//        }
        if self.title == "팬도로시" {
            menuImage.image = UIImage(named: "pandorothy_menu.png")
        }
        if self.title == "만권화밥" {
            menuImage.image = UIImage(named: "mangwun_menu.png")
        }
//        if self.title == "월남선생" { // 업데이트시 추가
//            menuImage.image = UIImage(named: "walnam_menu.png")
//        }
//        if self.title == "아딸" { // 업데이트시 추가
//            menuImage.image = UIImage(named: "attal_menu.png")
//        }
        if self.title == "최고당돈까스" {
            menuImage.image = UIImage(named: "choigodang_menu.png")
        }
        if self.title == "에땅" {
            menuImage.image = UIImage(named: "etang_menu.png")
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
