//
//  ViewController.swift
//  PassDataClosue
//
//  Created by User on 5/23/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nhapSoTextField: UITextField!
    @IBOutlet weak var ketQuaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func diQuaySoButton(_ sender: Any) {
        
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        secondVC.username = "Quay so may man"
        
        guard let nhapso1 = nhapSoTextField.text else {
            return
        }
        secondVC.text1 = "\(nhapso1)"
        //hung du lieu
        secondVC.datas = {[weak self] data in
            guard let strongSelf = self else {
                return
            }
            strongSelf.ketQuaLabel.text = data.ketQuaHienThi
            strongSelf.ketQuaLabel.textColor = .red
        }
    
    }
}

