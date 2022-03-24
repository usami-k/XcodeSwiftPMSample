// Copyright © 2022 USAMI Kosuke

import UIKit
import Core

public class RootViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let label = UILabel(frame: CGRect(x: 20, y: 40, width: 100, height: 40))
        label.textColor = .black
        label.text = Core.text
        view.addSubview(label)
    }

}
