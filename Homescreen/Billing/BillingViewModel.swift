//
//  BillingViewModel.swift
//  Homescreen
//
//  Created by Uday Pandey on 27/09/2022.
//

import Foundation

final public class BillingViewModel: ObservableObject {
    @Published private(set) var title: String

    public init(title: String) {
        self.title = title
    }
}
