//
//  MainFactory.swift
//  Homescreen
//
//  Created by Uday Pandey on 30/09/2022.
//

import Foundation
import UIKit
import SwiftUI

enum TestingViews: String {
    case login, dashboard, billing, payment
}

class MainFactory {
    static func topViewController() -> UIViewController {
        let environment = ProcessInfo.processInfo.environment

        guard let key = environment["uitesting"],
              let testingViewKey = TestingViews(rawValue: key) else {
            let router = MainRouter()
            let loginViewModel = LoginViewModel(title: "Login", router: router)
            let viewController = UIHostingController(rootView: LoginView(model: loginViewModel))
            return UINavigationController(rootViewController: viewController)
        }

        let viewController: UIViewController
        let router = FakeRouter()
        switch testingViewKey {
        case .login:
            let model = LoginViewModel(title: "Login", router: router)
            viewController = UIHostingController(rootView: LoginView(model: model))
        case .dashboard:
            let model = DashboardViewModel(title: "Dashboard", router: router)
            viewController = UIHostingController(rootView: DashboardView(model: model))
        case .billing:
            let model = BillingViewModel(title: "Billing", router: router)
            viewController = UIHostingController(rootView: BillingView(model: model))
        case .payment:
            let model = PaymentViewModel(title: "Payment", router: router)
            viewController = UIHostingController(rootView: PaymentView(model: model))

        }

        return UINavigationController(rootViewController: viewController)
    }

}
