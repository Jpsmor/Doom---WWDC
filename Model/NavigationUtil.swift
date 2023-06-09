//
//  File.swift
//  
//
//  Created by Jpsmor on 20/04/23.
//

import UIKit

struct NavigationUtil {
    static func popToRootView() {
        findNavigationController(viewController: UIApplication
            .shared
            .connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.keyWindow }
            .first?.rootViewController)?
            .popToRootViewController(animated: true)
    }
static func findNavigationController(viewController: UIViewController?) -> UINavigationController? {
        guard let viewController = viewController else {
            return nil
        }
if let navigationController = viewController as? UINavigationController {
            return navigationController
        }
for childViewController in viewController.children {
            return findNavigationController(viewController: childViewController)
        }
return nil
    }
}

// Credits: https://rekerrsive.medium.com/three-ways-to-pop-to-the-root-view-in-a-swiftui-navigationview-430aee720c9a
//Used to solve some bugs with the replay function of the game by dismissing the views

