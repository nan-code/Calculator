//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Matthew Nanney on 7/11/17.
//  Copyright © 2017 NanCode. All rights reserved.
//

import UIKit

public class CalculatorButton: UIButton {

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }

    func setupButton() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 1
    }
}
