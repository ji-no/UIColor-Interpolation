import UIKit

// MARK: - ColorViewController

public class ColorViewController: UIViewController {
    public var colors = [UIColor]()

    override public func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = colors.first
    }

    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        configureScrollView()
    }

    private func configureScrollView() {
        let scrollView = UIScrollView(frame: view.frame)
        let contentWidth = view.frame.width * CGFloat(colors.count)
        scrollView.contentSize = CGSize(width: contentWidth, height: 0)
        scrollView.isPagingEnabled = true
        scrollView.delegate = self

        view.addSubview(scrollView)
    }
}

// MARK: - UIScrollViewDelegate

extension ColorViewController: UIScrollViewDelegate {
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        interpolateBackgroundColor(forContentOffset: scrollView.contentOffset)
    }

    private func interpolateBackgroundColor(forContentOffset offset: CGPoint) {
        // At least 2 colors are required for interpolation.
        guard colors.count >= 2 else { return }

        // Interpolation should not be attempted if the current offset
        // is outside of a valid range (e.g. `currentPage < 1`).
        let pageWidth = view.frame.width
        let currentPage = Int((offset.x / pageWidth) + 1)
        guard currentPage >= 1 && currentPage < colors.count else { return }

        // Sets the interpolated color for the offset.
        let startColor = colors[currentPage - 1]
        let endColor = colors[currentPage]
        let offsetForCurrentPage = pageWidth * CGFloat(currentPage)
        let progress = 1 - ((offsetForCurrentPage - offset.x) / pageWidth)

        view.backgroundColor = UIColor.interpolate(from: startColor, to: endColor, withProgress: progress)
    }
}
