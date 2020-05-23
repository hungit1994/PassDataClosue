//
//  SecondViewController.swift
//  PassDataClosue
//
//  Created by User on 5/23/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
//    @IBOutlet weak var soDaChonLabel: UILabel!
//    @IBOutlet weak var quaySoButton: UIButton!
    @IBOutlet weak var soDaChonLabel: UILabel!
    
    @IBOutlet weak var quaySoButton: UIButton!
    var username: String?
    var text1: String?
    
    var datas: ((User) -> Void)?
    var a: Bool = true
    var ketqua: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = username {
            navigationItem.title = name
        }
        
        guard let text2 = text1 else {
            return
        }
        soDaChonLabel.text = " So da chon la: " + text2
        
    }
    
    @IBAction func quaySo(_ sender: Any) {
    
        if a == false {
            let b = Int(text1 ?? "")
            let random = Int.random(in: 0...100)
            if b == random {
                ketqua = "Chuc mung ban da chon dung"
            } else {
                ketqua = "Xin loi ban da chon sai!"
            }
            guard let ketqua1 = ketqua else {
                return
            }
            
            //Buoc2 truyen du lieu
            datas?(User(ketQuaHienThi: ketqua1))
            navigationController?.popViewController(animated: true)
        }
        if a == true{
            quaySoButton.setTitle("Nhan thuong", for: .normal)
            a = false
        }
    }
    
    
    
}
