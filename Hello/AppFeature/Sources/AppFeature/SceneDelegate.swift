// Copyright © 2022 USAMI Kosuke

import UIKit

open class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    public var window: UIWindow?

    public final func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        window.rootViewController = RootViewController()
        self.window = window
        window.makeKeyAndVisible()
    }

}
