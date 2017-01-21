//
//  CustomView.swift
//  PlayingView
//
//  Created by Sureshbabu Naidu on 21/01/17.
//  Copyright © 2017 Vishwak Sol pvt. ltd. All rights reserved.
//

import UIKit

class CustomView: UIView {
    var view = UIView()
    @IBOutlet var lbl: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    func setup() {
        
        
        // setup the view from .xib
        view = loadViewFromNib()
        view.frame = bounds
        self .isUserInteractionEnabled = true
        view.backgroundColor = UIColor .clear
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        self.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
        view.backgroundColor = UIColor.orange
        self.tag = 9999
    }
    func loadViewFromNib() -> UIView {
        // grabs the appropriate bundle
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    func showInView(status:String){
        UIApplication.shared.keyWindow!.addSubview(self)
        self.lbl.text = status
        self .setNeedsDisplay()
    }
    func hideInView() {
        
        self .removeFromSuperview()
    }
}
