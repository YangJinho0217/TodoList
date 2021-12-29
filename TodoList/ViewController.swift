//
//  ViewController.swift
//  TodoList
//
//  Created by 양진호 on 2021/12/29.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var titleLable : UILabel = {
        
        let label = UILabel()
        label.text = "메인화면"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.textAlignment = .center
        return label
    }()
    
    let animationView : AnimationView = {
        
        let animview = AnimationView(name: "88770-loading-boxes")
        animview.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animview.contentMode = .scaleAspectFill
        return animview
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(animationView)
        animationView.center = view.center
        
        animationView.play{ ( finish) in
            
            print("애니메이션 끝")
            
            self.animationView.removeFromSuperview()
            
            
            
            self.view.addSubview(self.titleLable)
            self.titleLable.translatesAutoresizingMaskIntoConstraints = false
            self.titleLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLable.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }

    
   
}

