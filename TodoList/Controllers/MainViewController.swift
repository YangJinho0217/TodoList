//
//  ViewController.swift
//  TodoList
//
//  Created by 양진호 on 2021/12/29.
//

import UIKit
import Lottie

class MainViewController : UIViewController {
    
    
    @IBOutlet var MainVie: UIView!
    @IBOutlet var LogoImage: UIImageView!
    @IBOutlet var StackView: UIStackView!
    @IBOutlet var LoginButton: UIButton!
    
    func Hidden() {
        LogoImage.isHidden = false
        StackView.isHidden = false
        StackView.isHidden = false
        LoginButton.isHidden = false
    }
    //Lable 정의
//    var titleLabel : UILabel = {
//
//        let label = UILabel()
//
//        //label의 텍스트 정의
//        label.text = "Hello"
//        //label의 텍스트 컬러 정의
//        label.textColor = .black
//        //label의 폰트 정의
//        label.font = UIFont.boldSystemFont(ofSize: 50)
//        //label의 위치 정의
//        label.textAlignment = .center
//        // return값을 날려주어야 합니다.
//        return label
//    }()
    
    let animationView : AnimationView = {
        
        let animview = AnimationView(name: "86299-3x3-cube-loader-3")
        animview.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
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
            self.navigationController?.isNavigationBarHidden = true
            self.Hidden()
            
//            self.view.addSubview(self.titleLabel)
//            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
//            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }

    
   
}

