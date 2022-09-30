//
//  MainRouter.swift
//  Homescreen
//
//  Created by Uday Pandey on 25/09/2022.
//

import Foundation
import UIKit
import SwiftUI

class MainRouter: RouterType {
    func goToPayment() {
        if let topController = UIApplication.shared.keyWindow?.rootViewController,
           let navController = topController as? UINavigationController {
            let model = PaymentViewModel(title: "Payment", router: self)
            let viewController = UIHostingController(rootView: PaymentView(model: model))

            navController.pushViewController(viewController, animated: true)
        }

    }

    func goToDashboard() {
        if let topController = UIApplication.shared.keyWindow?.rootViewController,
           let navController = topController as? UINavigationController {
            let model = DashboardViewModel(title: "Dashboard", router: self)
            let viewController = UIHostingController(rootView: DashboardView(model: model))

            navController.pushViewController(viewController, animated: true)
        }
    }

    func goToBilling() {
        if let topController = UIApplication.shared.keyWindow?.rootViewController,
           let navController = topController as? UINavigationController {
            let model = BillingViewModel(title: "Billing", router: self)
            let viewController = UIHostingController(rootView: BillingView(model: model))

            navController.pushViewController(viewController, animated: true)
        }
    }
}
