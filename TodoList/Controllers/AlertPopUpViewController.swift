//
//  AlertPopUpViewController.swift
//  TodoList
//
//  Created by 양진호 on 2022/01/04.
//

import UIKit

class AlertPopUpViewController: UIViewController {

    @IBOutlet var ContentView: UIView!
    @IBOutlet var BtnBlog: UIButton!
    @IBOutlet var BtnBg: UIButton!
    
    // 비동기처리하기
    var blogbtnCompletionCloure : (() -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        ContentView.layer.cornerRadius = 15
        BtnBlog.layer.cornerRadius = 15
        
    }
    
    @IBAction func ActionWebBlog(_ sender: Any) {

        print("블로그로 가자잇")
        //스토리보드 가져오기
        self.dismiss(animated: true, completion: nil)
        // 컴플레션 블럭 호출
        if let blogbtnCompletionCloure = blogbtnCompletionCloure {
            //메인에 알려야 함
            blogbtnCompletionCloure()
        }
        
    }
    
    @IBAction func ActionCloseBtnBg(_ sender: Any) {
        print("창닫기 완료")
        self.dismiss(animated: false, completion: nil)
    }
    
    
    
}
