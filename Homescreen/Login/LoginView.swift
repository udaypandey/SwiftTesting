//
//  LoginView.swift
//  Homescreen
//
//  Created by Uday Pandey on 27/09/2022.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject public private(set) var model: LoginViewModel

    var body: some View {
        ZStack {
            Color.yellow

            VStack {
                Text(model.title)
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .accessibilityLabel(Accessibility.title.rawValue)
            }
        }
        .ignoresSafeArea()
    }
}

extension LoginView {
    private enum Accessibility: String {
        case title = "accessibility.id.title"
        case login = "accessibility.id.goToDashboard"
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(model: LoginViewModel(title: "Login"))
    }
}
