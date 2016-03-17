/*:
[TOC](Table%20Of%20Contents) | [Previous](@previous) | [Next](@next)

---

- important:
This example requires Xcode 7.3 beta 3 or later for interactivity.

# Scroll View
 
This example presents a `UIViewController` with a `UIScrollView` in [paging mode](https://developer.apple.com/library/ios/documentation/WindowsViews/Conceptual/UIScrollView_pg/ScrollViewPagingMode/ScrollViewPagingMode.html). Each page of the scroll view is represented by a color in the `ColorViewController`'s `colors` array.

## Usage

Show the Assistant editor and swipe horizontally to interpolate the view's background color.
*/
import UIKit
import XCPlayground
/*:
- experiment:
Try adding and removing colors.
*/
let colors = [[#Color(colorLiteralRed: 0.3607843137254902, green: 0.02352941176470588, blue: 0.5490196078431373, alpha: 1)#], [#Color(colorLiteralRed: 0.9137254901960784, green: 0.2352941176470588, blue: 0.6745098039215687, alpha: 1)#], [#Color(colorLiteralRed: 0, green: 0.7098039215686275, blue: 0.8862745098039215, alpha: 1)#], [#Color(colorLiteralRed: 0.5450980392156862, green: 0.7686274509803921, blue: 0, alpha: 1)#], [#Color(colorLiteralRed: 1, green: 0.7215686274509804, blue: 0.1098039215686274, alpha: 1)#], [#Color(colorLiteralRed: 0.9372549019607843, green: 0.2, blue: 0.2509803921568627, alpha: 1)#]]
//: Renders a `ColorViewController` in the Assistant editor.
let viewController = ColorViewController()
viewController.colors = colors

XCPlaygroundPage.currentPage.liveView = viewController
