//
//  CustomView.swift
//  todo2019
//
//  Created by Takashi Seki on 2019/12/17.
//  Copyright © 2019 Takashi Seki. All rights reserved.
//

import UIKit

class CustomView: NibView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    var counter : Int = 0{
        didSet {
            counterLabel.text = "\(counter)回タップ"
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
    }
    
    @IBAction func onCountUpClicked(_ sender: UIButton) {
        self.counter += 1
    }
}
