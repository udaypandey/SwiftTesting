//
//  BillingView.swift
//  Homescreen
//
//  Created by Uday Pandey on 27/09/2022.
//

import SwiftUI

struct PaymentView: View {
    @ObservedObject public private(set) var model: PaymentViewModel

    var body: some View {
        ZStack {
            Color.gray

            VStack {
                Text(model.title)
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .accessibility(identifier: Accessibility.title.rawValue)
            }
        }
        .ignoresSafeArea()
    }
}

extension PaymentView {
    private enum Accessibility: String {
        case title = "accessibility.id.title"
    }
}


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView(model: PaymentViewModel(
            title: "Payment",
            router: FakeRouter()))
    }
}
