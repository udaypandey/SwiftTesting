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
            Color.pink

            VStack {
                Spacer()
                Spacer()

                Text(model.title)
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .accessibility(identifier: Accessibility.title.rawValue)

                Spacer()

                Button(action: {
                    model.didTapOnGoToPayment()
                }) {
                    HStack {
                        Text("Payment")

                        Image(systemName: "arrow.forward.circle")
                    }
                    .padding()
                    .foregroundColor(.white)
                    .font(.title)
                }
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .accessibility(identifier: Accessibility.goToPayment.rawValue)

                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

extension BillingView {
    private enum Accessibility: String {
        case title = "accessibility.id.title"
        case goToPayment = "accessibility.id.goToPayment"
    }
}


struct BillingView_Previews: PreviewProvider {
    static var previews: some View {
        BillingView(model: BillingViewModel(
            title: "Billing",
            router: FakeRouter()))
    }
}
