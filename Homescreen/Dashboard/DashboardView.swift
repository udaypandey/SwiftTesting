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
                Text(model.title)
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .accessibilityLabel(Accessibility.title.rawValue)
            }
        }
        .ignoresSafeArea()
    }
}

extension DashboardView {
    private enum Accessibility: String {
        case title = "accessibility.id.title"
        case login = "accessibility.id.goToBilling"
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(model: DashboardViewModel(title: "Dashboard"))
    }
}
