//
//  ImageSlideShowNavigationController.swift
//
//  Created by Dimitri Giani on 27/10/2016.
//  Copyright © 2016 Dimitri Giani. All rights reserved.
//

import UIKit

class ImageSlideShowNavigationController: UINavigationController
{
	override func childViewControllerForStatusBarStyle() -> UIViewController?
	{
		return topViewController
	}
	
	override func prefersStatusBarHidden() -> Bool
	{
		if let prefersStatusBarHidden = viewControllers.last?.prefersStatusBarHidden()
		{
			return prefersStatusBarHidden
		}
		
		return false
	}
}