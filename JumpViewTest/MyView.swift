//
//  MyView.swift
//  JumpViewTest
//
//  Created by Terry Yang on 2017/6/30.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class MyView: UIView {
    
    @IBOutlet weak var labCustom: UILabel!
    
    var view:UIView!
    
    // Label Inspectable
    @IBInspectable
    var mytitleLabelText: String? {
        get {
            return labCustom.text
        }
        set(mytitleLabelText) {
            labCustom.text = mytitleLabelText
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
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [
            UIViewAutoresizing.flexibleWidth,
            UIViewAutoresizing.flexibleHeight
        ]
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "MyView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
}
