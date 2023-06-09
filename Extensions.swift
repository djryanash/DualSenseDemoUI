// 
//  Extensions.swift
//  DualSenseDemo
//
//  Created by Ryan Ashton on 8/6/2023
//  Copyright © 2023 Ryan Ashton. All rights reserved.
//
    

import UIKit

extension UIFont {
    
    static var boldTitle: UIFont {
        let baseFont = UIFont.preferredFont(forTextStyle: .largeTitle)
        let boldDescriptor = baseFont.fontDescriptor.withSymbolicTraits(.traitBold)
        return UIFont(descriptor: boldDescriptor!, size: 0)
    }
    
    static var boldTitle3: UIFont {
        let baseFont = UIFont.preferredFont(forTextStyle: .title3)
        let boldDescriptor = baseFont.fontDescriptor.withSymbolicTraits(.traitBold)
        return UIFont(descriptor: boldDescriptor!, size: 0)
    }
    
    static var boldBody: UIFont {
        let baseFont = UIFont.preferredFont(forTextStyle: .body)
        let boldDescriptor = baseFont.fontDescriptor.withSymbolicTraits(.traitBold)
        return UIFont(descriptor: boldDescriptor!, size: 0)
    }
    
    static var boldCaption1: UIFont {
        let baseFont = UIFont.preferredFont(forTextStyle: .caption1)
        let boldDescriptor = baseFont.fontDescriptor.withSymbolicTraits(.traitBold)
        return UIFont(descriptor: boldDescriptor!, size: 0)
    }
    
}

extension UIColor {
    
    public class var randomUIColor: UIColor {
        let colors: [UIColor] = [
            .systemRed, .systemBlue, .systemCyan,
            .systemGray, .systemMint, .systemPink,
            .systemTeal, .systemBrown, .systemIndigo,
            .systemOrange, .systemPurple]
        return colors.randomElement()!
    }
    
}
