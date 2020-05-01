//
//  ViewController.swift
//  iwanteat
//
//  Created by SWUCOMPUTER on 2020/04/27.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainName: UILabel! // 메인화면 이름
    @IBOutlet var start: UIButton! // 시작버튼
    var myName: String = "" // 이름 변수
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNextView" {
            let destVC = segue.destination as! NextViewController
            destVC.title = "뭐먹지 in SWU"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainName.text = myName
        mainName.text! += "의"
    }
    

}

