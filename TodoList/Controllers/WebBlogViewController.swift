//
//  WebBlogViewController.swift
//  TodoList
//
//  Created by 양진호 on 2022/01/04.
//

import UIKit
import WebKit

class WebBlogViewController: UIViewController, PopupDelegate{
    
    

    @IBOutlet var MyWebBiew: WKWebView!
    @IBOutlet var BtnPopUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        BtnPopUp.layer.cornerRadius = 15
    }
    

    @IBAction func ActionPopUp(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Popup", bundle: nil)
        //뷰컨트롤러 가져오기
        let vc2 = sb.instantiateViewController(withIdentifier: "AlertPopUpViewController") as! AlertPopUpViewController
        //뷰 풀스크린으로 보여주기
        vc2.modalPresentationStyle = .overCurrentContext
        //self.dismiss(animated: true, completion: nil)
        
        vc2.blogbtnCompletionCloure = {
            print("컴플레션 블럭이 호출되었습니다.")
            let url = URL (string: "https://yagsill.tistory.com/")
            self.MyWebBiew.load(URLRequest(url: url!))
            self.BtnPopUp.isHidden = true
            
        }
        vc2.popupDeleget = self
        self.present(vc2, animated: false, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - PopupDelegte
    func clickedGithub() {
        print("Sucess Click Github Button")
        let url = URL (string: "https://github.com/YangJinho0217/TodoList")
        self.MyWebBiew.load(URLRequest(url: url!))
        self.BtnPopUp.isHidden = true
    }
    
}
