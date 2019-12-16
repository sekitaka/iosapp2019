//
//  AnimationViewController.swift
//  todo2019
//
//  Created by Takashi Seki on 2019/12/16.
//  Copyright © 2019 Takashi Seki. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var rectView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        let x = self.rectView.center.x
        let y = self.rectView.center.y
        self.rectView.transform = CGAffineTransform(scaleX: 0, y: 0)
//        self.rectView.center.y = 300
//        UIView.animate(withDuration: 0.6,
//        animations: {
//            self.rectView.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
//            self.rectView.center.y += 20
//        },
//        completion: { _ in
//        })
        
        UIView.animate(withDuration: 5, delay: 0, options: .curveEaseIn, animations: {
            
            // TODO アンカー を水平中央、垂直ボトムにする
            let a = CGAffineTransform(scaleX: 1, y: 1  )
            let b = a.translatedBy(x: 0, y: -25) // オブジェクト中心からの相対位置？
//            a.translatedBy(x: 0, y: 0   )
            //self.rectView.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.rectView.transform = b
            //self.rectView.center.y -= 20
        }, completion: { _ in
            
        })
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
