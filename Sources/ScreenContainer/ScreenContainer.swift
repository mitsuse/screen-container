import UIKit

public protocol Default {
    func add(content viewController: UIViewController)
    func add(content viewController: UIViewController, to superView: UIView)
    func remove(content viewController: UIViewController)
    func remove(content viewController: UIViewController, from superView: UIView)
}

extension Default where Self: UIViewController {
    public func add(content viewController: UIViewController) {
        add(content: viewController, to: view)
    }

    public func add(content viewController: UIViewController, to superView: UIView) {
        addChild(viewController)
        superView.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }

    public func remove(content viewController: UIViewController) {
        remove(content: viewController, from: view)
    }

    public func remove(content viewController: UIViewController, from superView: UIView) {
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
}
