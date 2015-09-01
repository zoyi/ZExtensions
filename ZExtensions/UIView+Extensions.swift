//
//  UIView+Extensions.swift
//  ZExtensions
//
//  Created by Di Wu on 9/1/15.
//  Copyright (c) 2015 ZOYI. All rights reserved.
//

import UIKit

public extension UIView {
  var width:      CGFloat { return self.frame.size.width }
  var height:     CGFloat { return self.frame.size.height }
  var size:       CGSize  { return self.frame.size}

  var origin:     CGPoint { return self.frame.origin }
  var x:          CGFloat { return self.frame.origin.x }
  var y:          CGFloat { return self.frame.origin.y }
  var centerX:    CGFloat { return self.center.x }
  var centerY:    CGFloat { return self.center.y }

  var left:       CGFloat { return self.frame.left }
  var right:      CGFloat { return self.frame.right }
  var top:        CGFloat { return self.frame.top }
  var bottom:     CGFloat { return self.frame.bottom }

  public func setWidth(width: CGFloat) {
    self.frame.size.width = width
  }

  public func setHeight(height: CGFloat) {
    self.frame.size.height = height
  }

  public func setSize(size: CGSize) {
    self.frame.size = size
  }

  public func setOrigin(point: CGPoint) {
    self.frame.origin = point
  }

  public func setX(x: CGFloat) {
    self.frame.origin = CGPointMake(x, self.frame.origin.y)
  }

  public func setY(y: CGFloat) {
    self.frame.origin = CGPointMake(self.frame.origin.x, y)
  }

  public func setCenterX(x: CGFloat) {
    self.center = CGPointMake(x, self.center.y)
  }

  public func setCenterY(y: CGFloat) {
    self.center = CGPointMake(self.center.x, y)
  }

  public func roundCorner(radius: CGFloat) {
    self.layer.cornerRadius = radius
  }

  public func setTop(top: CGFloat) {
    self.frame.origin.y = top
  }

  public func setLeft(left: CGFloat) {
    self.frame.origin.x = left
  }

  public func setRight(right: CGFloat) {
    self.frame.origin.x = right - self.frame.size.width
  }

  public func setBottom(bottom: CGFloat) {
    self.frame.origin.y = bottom - self.frame.size.height
  }
}
