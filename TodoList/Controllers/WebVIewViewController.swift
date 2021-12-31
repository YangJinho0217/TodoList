//
//  WebVIewViewController.swift
//  TodoList
//
//  Created by 양진호 on 2021/12/31.
//

import UIKit
import WebKit
import AVFoundation
import QRCodeReader

class WebVIewViewController: UIViewController, QRCodeReaderViewControllerDelegate {
    
    @IBOutlet var WebView: WKWebView!
    @IBOutlet var QRCodeBtn: UIButton!
    
    //QR코드 리더 뷰 컨트롤러 만든다
    lazy var readerVC: QRCodeReaderViewController = {
        let builder = QRCodeReaderViewControllerBuilder {
            $0.reader = QRCodeReader(metadataObjectTypes: [.qr], captureDevicePosition: .back)
            
            // Configure the view controller (optional)
            $0.showTorchButton        = false
            $0.showSwitchCameraButton = false
            $0.showCancelButton       = false
            $0.showOverlayView        = true
            $0.rectOfInterest         = CGRect(x: 0.2, y: 0.2, width: 0.6, height: 0.6)
        }
        
        return QRCodeReaderViewController(builder: builder)
    }()
    
    //MARK : - 오버라이드 메소드
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL (string: "https://www.naver.com")
        let requestObj = URLRequest(url: url!)
        WebView.load(requestObj)
        // Do any additional setup after loading the view.
        updateUI()
        
        QRCodeBtn.addTarget(self, action: #selector(QRcodeLaunch), for: .touchUpInside)
    }
    
    func updateUI(){
        QRCodeBtn.layer.cornerRadius = 25
        
    }
    //MARK : - fileprivate 메소드
    @objc fileprivate func QRcodeLaunch(){
        print("MainViewController - QRcodeLaunch called")
        
        readerVC.delegate = self

          // Or by using the closure pattern
          readerVC.completionBlock = { (result: QRCodeReaderResult?) in
            print(result)
            guard let sacnnedUrlString = result?.value else { return }
            print("scanningQRCode : \(sacnnedUrlString)")
            
            let scanned = URL(string: sacnnedUrlString)
            self.WebView.load(URLRequest(url : scanned!))
            
          }
          // Presents the readerVC as modal form sheet
          readerVC.modalPresentationStyle = .formSheet
          present(readerVC, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK : - QR코드 리더 델리게이트 메소드
    func reader(_ reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult) {
        reader.stopScanning()
        dismiss(animated: true, completion: nil)
    }
    
    func readerDidCancel(_ reader: QRCodeReaderViewController) {
        reader.stopScanning()
        dismiss(animated: true, completion: nil)
    }
}
