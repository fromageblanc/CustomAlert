//
//  ViewController.swift
//  CustomAlert
//
//

import UIKit

class ViewController: UIViewController {

    // カスタムアラートのインスタンス
    let customAlert = CustomAlert()

    @IBAction func openView(_ sender:UIButton) {
        customAlert.open(aroundAreaTappable:true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // カスタムアラートのサイズ・背景を設定
        customAlert.prepare(frame:CGRect(x:0,y:0,width:300,height:300),
                            bgColor: UIColor.white,
                            aroundOpacity: 0.6)
        // デリゲート設定
        customAlert.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// カスタムアラート「OK」クリック時の処理
extension ViewController:CustomAlertDelegate {
    func okTapped(_ alert:CustomAlert) {
        alert.label.text = "OK tapped!"
    }
}
