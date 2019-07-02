
import UIKit
//import LoginWithEgov

class LogoutViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // Cornerleri round elemek ucun funksiyani viewDidLayoutSubviews funksiyasi altinda cagirmaq lazimdi
    override func viewDidLayoutSubviews() {
        myView.roundCorners(corners: [.bottomLeft, .bottomRight], cornerRadius: 60.0)
    }
}


extension UIView {
    func roundCorners(corners: UIRectCorner, cornerRadius: Double) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer

    }
    
}
