//
//  SplashViewController.swift
//  TodoList
//
//  Created by 양진호 on 2021/12/30.
//

import UIKit
import Lottie

class SplashViewController: UIViewController {

    
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
            
            
            
//            self.view.addSubview(self.titleLabel)
//            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
//            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }

        // Do any additional setup after loading the view.
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
