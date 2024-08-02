//
//  PetSales.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/20/24.
//

import Foundation

enum Pet: String {
    case dog, cat, bird, fish
}

struct PetSales: Identifiable {
    var month: String
    var animal: Pet
    var value: Double
    var id = UUID()
}
