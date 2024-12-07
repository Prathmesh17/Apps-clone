//
//  SpotifyCloneApp.swift
//  SpotifyClone
//
//  Created by Prathmesh Parteki on 12/04/24.
//

import SwiftUI
import SwiftfulRouting

@main
struct CloneApps: App {
    var body: some Scene {
        WindowGroup {
            RouterView{ _ in
                ContentView()
            }
        }
    }
}

extension UINavigationController : UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
