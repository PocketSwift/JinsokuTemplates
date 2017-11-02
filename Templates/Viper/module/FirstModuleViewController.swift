//
//  FirstModuleViewController.swift
//  ViperStudies
//
//  Created by omar megdadi on 2/9/17.
//  Copyright © 2017 NSStudent. All rights reserved.
//

import UIKit
import Reusable

protocol FirstModuleViewControllerProtocol: class {
	var presenter : FirstModulePresenterProtocol? { get set }
}

class FirstModuleViewController: BaseViewController, StoryboardSceneBased {

    static var sceneStoryboard = UIStoryboard(name: /*AppStoryboard.Splash.rawValue*/, bundle: nil)
	var presenter: FirstModulePresenterProtocol?
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
    
    override func configView() {
        
    }
	
}

// MARK: FirstModuleViewControllerProtocol
extension FirstModuleViewController : FirstModuleViewControllerProtocol {
    
}
