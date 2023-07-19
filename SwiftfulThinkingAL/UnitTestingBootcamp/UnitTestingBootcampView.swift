//
//  UnitTestingBootcampView.swift
//  SwiftfulThinkingAL
//
//  Created by Mitch Andrade on 7/19/23.
//

/*
 
 1. Unit Tests
 - test the business logic in your app
 
 2. UI Tests
 - tests the UI of your app
 
 */

import SwiftUI

struct UnitTestingBootcampView: View {
    
    @StateObject private var vm: UnitTestingBootcampViewModel
    
    init(isPremium: Bool) {
        _vm = StateObject(wrappedValue: UnitTestingBootcampViewModel(isPremium: isPremium))
    }
    
    var body: some View {
        Text(vm.isPremium.description)
            .font(.largeTitle)
    }
}

#Preview {
    UnitTestingBootcampView(isPremium: true)
}
