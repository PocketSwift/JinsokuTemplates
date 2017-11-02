//
//  FirstModulePresenter.swift
//  ViperStudies
//
//  Created by omar megdadi on 2/9/17.
//  Copyright © 2017 NSStudent. All rights reserved.
//

import Foundation

protocol FirstModulePresenterProtocol {
    weak var view : FirstModuleViewControllerProtocol? { get set }
    init(_ view: FirstModuleViewControllerProtocol?, interactor: FirstModuleInteractorProtocol?, routing: FirstModuleRoutingProtocol?)
    func viewLoaded()
}

class FirstModulePresenter: FirstModulePresenterProtocol {
	
	weak var view: FirstModuleViewControllerProtocol?
	var routing: FirstModuleRoutingProtocol?
	var interactor: FirstModuleInteractorProtocol?
    
    required init(_ view: FirstModuleViewControllerProtocol?, interactor: FirstModuleInteractorProtocol?, routing: FirstModuleRoutingProtocol?) {
        self.view = view
        self.interactor = interactor
        self.routing = routing
    }
    
    func viewLoaded() {
        
    }
	
}
