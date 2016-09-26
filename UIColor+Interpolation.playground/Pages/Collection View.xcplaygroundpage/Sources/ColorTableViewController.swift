import UIKit

// MARK: - ColorCollectionViewController

public class ColorCollectionViewController: UICollectionViewController {
    let reuseIdentifier = "Cell"

    public var startColor: UIColor!
    public var endColor: UIColor!
    public var numberOfCells: Int!

    // MARK: - Lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    // MARK: - UICollectionViewDataSource

    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }

    // MARK: - UICollectionViewDelegate

    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    }

    public override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let progress = CGFloat(indexPath.row) / CGFloat(numberOfCells - 1)
        cell.backgroundColor = UIColor.interpolate(from: startColor, to: endColor, with: progress)
    }
}
