//
//  AnimationViewController.swift
//  todo2019
//
//  Created by Takashi Seki on 2019/12/16.
//  Copyright © 2019 Takashi Seki. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    let iconSize = 50.0
    @IBOutlet weak var icon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 拡大のアンカーポイントをボトムに移動
        self.icon.layer.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        // ↑の分位値が変わるので相殺する
        self.icon.center.y += 25
        self.icon.transform = CGAffineTransform(scaleX: 0, y: 0)

    }
    
    @IBAction func buttonTapped(_ sender: Any) {
                self.icon.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            let a = CGAffineTransform(scaleX: 1, y: 1  )
            self.icon.transform = a
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
