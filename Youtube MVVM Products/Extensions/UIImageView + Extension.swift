import UIKit
import Kingfisher

extension UIImageView {
    /// Sets the image from a remote URL string using Kingfisher.
    /// - Parameters:
    ///   - urlString: The string representation of the image URL.
    ///   - placeholder: An optional placeholder image to display while loading.
    func setImage(with urlString: String, placeholder: UIImage? = nil) {
        guard let url = URL(string: urlString) else { return }
        DispatchQueue.main.async { [weak self] in
            self?.kf.indicatorType = .activity
            self?.kf.setImage(with: url, placeholder: placeholder)
        }
    }
}

