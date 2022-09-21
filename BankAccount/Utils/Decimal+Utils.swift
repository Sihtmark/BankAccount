//
//  Decimal+Utils.swift
//  BankAccount
//
//  Created by Sergei Poluboiarinov on 18.09.2022.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
