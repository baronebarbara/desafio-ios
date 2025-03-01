//
//  LoginFactory.swift
//  desafio-ios
//
//  Created by Barbara Barone on 08/02/22.
//

import UIKit

enum LoginFactory {
    static func make() -> UIViewController {
        let coordinator: LoginCoordinating = LoginCoordinator()
        let presenter: LoginPresenting = LoginPresenter(coordinator: coordinator)
        let interactor = LoginInteractor(presenter: presenter)
        let viewController = LoginViewController(interactor: interactor)

        coordinator.viewController = viewController
        presenter.viewController = viewController

        return viewController
    }
}
