//
//  SignUpViewController.swift
//  TodoList
//
//  Created by 양진호 on 2021/12/30.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
//        self.navigationController?.popViewController(animated: true)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ActionLoginMove(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
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
