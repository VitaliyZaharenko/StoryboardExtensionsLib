//
//  UIStoryboard+UIViewController.swift
//  StoryboardExtensions
//
//  Created by vitali on 12/21/18.
//  Copyright © 2018 vitcopr. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    
    static func instantiateStoryboardController<T: StoryboardController & UIViewController>(type: T.Type, bundle: Bundle = Bundle.main) -> T {
        let storybboard = UIStoryboard(name: T.storybaordName, bundle: bundle)
        return storybboard.instantiateViewController(withIdentifier: T.storyboardId) as! T
    }
    
}
