//
//  UnitTestingBootcampViewModel.swift
//  SwiftfulThinkingAL
//
//  Created by Mitch Andrade on 7/19/23.
//

import Foundation
import SwiftUI

class UnitTestingBootcampViewModel: ObservableObject {
    
    @Published var isPremium: Bool
    
    init(isPremium: Bool) {
        self.isPremium = isPremium
    }
    
}

