/*:
[TOC](Table%20Of%20Contents) | [Previous](@previous)

---

- important:
This example requires Xcode 7.3 beta 3 or later for interactivity.

# Collection View

The background color for each cell in the collection view represents a progress point from the `startColor` to the `endColor`.

## Usage

Show the Assistant editor.
*/
import UIKit
import PlaygroundSupport
/*:
 - experiment:
 Try changing the `startColor`, `endColor` and `numberOfCells`.
 */
let startColor = #colorLiteral(red: 0, green: 0.7098039215686275, blue: 0.8862745098039215, alpha: 1)
let endColor = #colorLiteral(red: 1, green: 0.7215686274509804, blue: 0.1098039215686274, alpha: 1)
let numberOfCells = 90
//: Renders a `ColorCollectionViewController` in the Assistant editor.
let viewController = ColorCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
viewController.startColor = startColor
viewController.endColor = endColor
viewController.numberOfCells = numberOfCells

PlaygroundPage.current.liveView = viewController
