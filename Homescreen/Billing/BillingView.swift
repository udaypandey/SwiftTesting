//
//  BillingView.swift
//  Homescreen
//
//  Created by Uday Pandey on 27/09/2022.
//

import SwiftUI

struct BillingView: View {
    @ObservedObject public private(set) var model: BillingViewModel

    var body: some View {
        ZStack {
            Color.blue

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

extension BillingView {
    private enum Accessibility: String {
        case title = "accessibility.id.title"
    }
}


struct BillingView_Previews: PreviewProvider {
    static var previews: some View {
        BillingView(model: BillingViewModel(title: "Billing"))
    }
}
