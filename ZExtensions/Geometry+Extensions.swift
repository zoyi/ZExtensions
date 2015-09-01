//
//  Geometry+Extensions.swift
//  ZExtensions
//
//  Created by Di Wu on 9/1/15.
//  Copyright (c) 2015 ZOYI. All rights reserved.
//

import UIKit

public extension CGRect {
  var top: CGFloat { return self.origin.y }
  var left: CGFloat { return self.origin.x }
  var bottom: CGFloat { return self.origin.y + self.size.height }
  var right: CGFloat { return self.origin.x + self.size.width }
}


