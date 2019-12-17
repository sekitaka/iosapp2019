//
//  CustomView.swift
//  todo2019
//
//  Created by Takashi Seki on 2019/12/17.
//  Copyright © 2019 Takashi Seki. All rights reserved.
//

import UIKit

class CustomView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    // 参考
    // https://qiita.com/maebaru/items/90f915f82e3d6425cbdc
    func loadNib() {
        if let view = Bundle(for: type(of: self)).loadNibNamed("CustomView", owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }

}
