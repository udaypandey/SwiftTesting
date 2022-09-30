//
//  LoginViewModel.swift
//  Homescreen
//
//  Created by Uday Pandey on 27/09/2022.
//

import Foundation
import SwiftUI

final public class LoginViewModel: ObservableObject {
    @Published private(set) var title: String

    private let router: RouterType

    init(title: String, router: RouterType) {
        self.title = title
        self.router = router
    }

    func didTapOnGoToDashboard() {
        router.goToDashboard()
    }
}
