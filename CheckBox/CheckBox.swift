//
//  CheckBox.swift
//  Designable
//
//  Created by Vishal Patel on 27/09/14.
//  Copyright (c) 2014 Vishal Patel. All rights reserved.
//
import QuartzCore
import UIKit

@IBDesignable class CheckBox:UIView {
    // MARK: Properties
    
    @IBInspectable var isChecked: Bool = false {
        didSet {
            setChecked(isChecked)
        }
        
    }
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
//    @IBInspectable var borderWidth:CGFloat = 2 {
//        didSet {
//            layer.borderWidth = borderWidth
//        }
//    }
    
    
    func setChecked(isChecked : Bool) -> Bool {
        var c:Bool = isChecked
        
        if !isChecked {
            layer.borderWidth = 1
            c = false
        }
        else {
            layer.borderWidth = 9
            c = true
        }
        
        return c
    }
    
}