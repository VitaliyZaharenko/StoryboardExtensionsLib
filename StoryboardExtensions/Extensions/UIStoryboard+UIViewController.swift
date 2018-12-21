//
//  UIStoryboard+UIViewController.swift
//  StoryboardExtensions
//
//  Created by vitali on 12/21/18.
//  Copyright © 2018 vitcopr. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    static func instantiateStoryboardController<T: StoryboardController & UIViewController>(type: T, bundle: Bundle = Bundle.main) -> UIViewController {
        let storybboard = UIStoryboard(name: T.storybaordName, bundle: bundle)
        return storybboard.instantiateViewController(withIdentifier: T.storyboardId)
    }
    
}
