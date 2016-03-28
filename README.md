# UIColor Interpolation

A simple `UIColor` extension for effortlessly interpolating between two colors. 

See [`Sources/UIColor+Interpolation.swift`](UIColor%2BInterpolation.playground/Sources/UIColor%2BInterpolation.swift) for details.

## Playground

The playground includes the follwing examples for exploring practical applications of the extension. Note that Xcode 7.3 or later is required for interactivity.

### Basic Usage

An example for visualizing the progress points between any two colors.

### Scroll View

A paged `UIScrollView` where each page corresponds to a different color. Swipe horizontally to interpolate the view's background color to the current progress point.

### Collection View

A `UICollectionView` where the background color for each cell represents an interpolated progress point between two colors.