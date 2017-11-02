//
//  FirstModuleInjection.swift
//  ViperStudies
//
//  Created by omar megdadi on 2/9/17.
//  Copyright © 2017 NSStudent. All rights reserved.
//

import Foundation

class FirstModuleInjection {
	
	 func setup(container: Swinject.Container)

		container.register(FirstModuleInteractorProtocol.self){ _ in
            FirstModuleInteractor()
		}
		
		container.register(FirstModuleRoutingProtocol.self){ _ in
            FirstModuleRouting()
		}
        
        container.register(FirstModulePresenterProtocol.self) { (r, view: FirstModuleControllerProtocol?, interactor: FirstModuleInteractorProtocol?, routing: FirstModuleRoutingProtocol?) in
            FirstModulePresenter(view, interactor: interactor, routing: routing)
        }
        
        container.register(FirstModuleViewControllerProtocol.self){ r in
            let vc = FirstModuleViewController.instantiate()
            vc.presenter = r.resolve(FirstModulePresenterProtocol.self)
            return vc
        }
        
        container.register(FirstModuleControllerProtocol?.self) { r in
            let c : FirstModuleViewControllerProtocol? = FirstModuleViewController.instantiate()
            let interactor = r.resolve(FirstModuleInteractorProtocol.self)
            let routing = r.resolve(FirstModuleRoutingProtocol.self)
            let presenter = r.resolve(FirstModulePresenterProtocol.self, arguments: c, interactor, routing)
            c?.presenter = presenter
            return c
        }
		
		container.storyboardInitCompleted(FirstModuleViewController.self) { _ in }
	}
}
