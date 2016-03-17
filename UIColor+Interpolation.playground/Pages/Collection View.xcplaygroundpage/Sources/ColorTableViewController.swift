import UIKit

// MARK: - ColorCollectionViewController

public class ColorCollectionViewController: UICollectionViewController {
    public var startColor: UIColor!
    public var endColor: UIColor!
    public var numberOfCells: Int!

    // MARK: - Lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }

    // MARK: - UICollectionViewDataSource

    public override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }

    // MARK: - UICollectionViewDelegate

    public override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
    }

    public override func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        let progress = CGFloat(indexPath.row) / CGFloat(numberOfCells - 1)
        cell.backgroundColor = UIColor.interpolateFrom(startColor, to: endColor, withProgress: progress)
    }
}