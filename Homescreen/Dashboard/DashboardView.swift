//
//  DashboardView.swift
//  Homescreen
//
//  Created by Uday Pandey on 27/09/2022.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject public private(set) var model: DashboardViewModel

    var body: some View {
        ZStack {
            Color.green

            VStack {
                Spacer()
                Spacer()

                Text(model.title)
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .accessibility(identifier: Accessibility.title.rawValue)

                Spacer()

                Button(action: {
                    model.didTapOnGoToBilling()
                }) {
                    HStack {
                        Text("Billing")

                        Image(systemName: "arrow.forward.circle")
                    }
                    .padding()
                    .foregroundColor(.white)
                    .font(.title)
                }
                .background(Color.pink)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .accessibility(identifier: Accessibility.goToBilling.rawValue)

                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

extension DashboardView {
    private enum Accessibility: String {
        case title = "accessibility.id.title"
        case goToBilling = "accessibility.id.goToBilling"
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(model: DashboardViewModel(title: "Dashboard", router: FakeRouter()))
    }
}
