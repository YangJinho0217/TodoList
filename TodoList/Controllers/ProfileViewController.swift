//
//  ProfileViewController.swift
//  TodoList
//
//  Created by 양진호 on 2022/01/06.
//

import UIKit
import YPImagePicker

class ProfileViewController: UIViewController {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var profileBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
        
        //MARK: -프로필 사진 변경 클릭
        self.profileBtn.addTarget(self, action: #selector(profilechageBtn), for: .touchUpInside)
    }
    
    func updateUI(){
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        profileBtn.layer.cornerRadius = 10
    }
    
    // 프사 변경 버튼이 클릭되었을 때
    @objc func profilechageBtn() {
        print("프로필 사진 변경 버튼 클릭")
        
        //카메라 라이브러리 세팅
        var config = YPImagePickerConfiguration()
//        config.screens = [.library,.photo, .video]
        config.screens = [.library]
        
        //사진이 선택 되었을 때
        let picker = YPImagePicker(configuration: config)
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage) // Transformed image, can be nil
                print(photo.exifMeta) // Print exif meta data of original image.
                
                //여기서 프사 이미지 변경
                self.profileImage.image = photo.image
            }
            // 사진 선택창 닫기
            picker.dismiss(animated: true, completion: nil)
        }
        //사진 선택창 보여주기
        present(picker, animated: true, completion: nil)
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
