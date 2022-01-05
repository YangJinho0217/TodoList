//
//  SignUpViewController.swift
//  TodoList
//
//  Created by 양진호 on 2021/12/30.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var btnTabBar: UIButton!
    @IBOutlet var btnNavigation: UIButton!
    @IBOutlet var btnPopUp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
//        self.navigationController?.popViewController(animated: true)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ActionTabBar(_ sender: Any) {
        let sb = UIStoryboard(name: "TabBar", bundle: nil)
        let vc2 = sb.instantiateViewController(withIdentifier: "UIMainTabBarControllerViewController") as! UIMainTabBarControllerViewController
        vc2.modalPresentationStyle = .fullScreen
        present(vc2, animated: true, completion: nil)
    }
    @IBAction func ActionNavigation(_ sender: Any) {
        let sb = UIStoryboard(name: "NavigationBar", bundle: nil)
        let vc2 = sb.instantiateViewController(withIdentifier: "NavigationBarViewController") as! NavigationBarViewController
        vc2.modalPresentationStyle = .fullScreen
        present(vc2, animated: true, completion: nil)
    }
    
    @IBAction func ActionLoginMove(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func ActionPopUp(_ sender: Any) {
        let sb = UIStoryboard(name: "Popup", bundle: nil)
        let vc2 = sb.instantiateViewController(withIdentifier: "WebBlogViewController") as! WebBlogViewController
        vc2.modalPresentationStyle = .fullScreen
        present(vc2, animated: true, completion: nil)
        
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
