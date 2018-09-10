//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Jonathan Rubina on 9/9/18.
//  Copyright © 2018 Jonathan Rubina. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame : CGRect(x: 5, y: (frame.size.height / 2) - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.4845534581, green: 0.4845534581, blue: 0.4845534581, alpha: 0.6798480308)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.26)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
