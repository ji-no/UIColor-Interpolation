/*:
# UIColor Interpolation
## Simple linear interpolation between two `UIColor`s

See `Sources/UIColor+Interpolation.swift` for details
*/

import UIKit

let blueColor = UIColor(red: 0, green: 0.71, blue: 0.886, alpha: 1)
let orangeColor = UIColor(red: 1, green: 0.722, blue: 0.11, alpha: 1)

/*:
### Viewing the result
1. Click the "Show Result" button (in the sidebar) for line 9
2. Right-click the result and select "Value History" for the display
3. Click the result and scroll through its history
*/

for i in 0.stride(to: 1, by: 0.1) {
    UIColor.interpolateFrom(blueColor, to: orangeColor, withProgress: CGFloat(i))
}
