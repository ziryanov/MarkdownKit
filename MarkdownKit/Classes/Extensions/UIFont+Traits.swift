//
//  UIFont+Traits.swift
//  Pods
//
//  Created by Ivan Bruel on 19/07/16.
//
//
import UIKit

extension UIFont {

  func withTraits(_ traits: UIFontDescriptorSymbolicTraits...) -> UIFont {
    if let descriptor = fontDescriptor
        .withSymbolicTraits(UIFontDescriptorSymbolicTraits(traits)) {
        return UIFont(descriptor: descriptor, size: 0)
    }
    return self
  }

  func bold() -> UIFont {
    return withTraits(.traitBold)
  }

  func italic() -> UIFont {
    return withTraits(.traitItalic)
  }
}
