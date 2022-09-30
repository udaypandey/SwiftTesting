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
                Spacer()
                Spacer()

                Text(model.title)
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .accessibility(identifier: Accessibility.title.rawValue)

                Spacer()

                Button(action: {
                    model.didTapOnGoToDashboard()
                }) {
                    HStack {
                        Text("Dashboard")

                        Image(systemName: "arrow.forward.circle")
                    }
                    .padding()
                    .foregroundColor(.white)
                    .font(.title)
                }
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .accessibility(identifier: Accessibility.goToDashboard.rawValue)

                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

extension LoginView {
    private enum Accessibility: String {
        case title = "accessibility.id.title"
        case goToDashboard = "accessibility.id.goToDashboard"
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(model: LoginViewModel(title: "Login", router: FakeRouter()))
    }
}
