//
//  GenericsBootcamp.swift
//  SwiftfulThinkingAL
//
//  Created by Mitch Andrade on 8/1/23.
//

import SwiftUI

class GenericsViewModel: ObservableObject {
    
    @Published var dataArray: [Bool] = []
    
    init() {
        dataArray = [true, false, true]
    }
    
    func removeDataFromArray() {
        dataArray.removeAll()
    }
}

struct GenericsBootcamp: View {
    
    @StateObject private var vm = GenericsViewModel()
    
    var body: some View {
        VStack {
            ForEach(vm.dataArray, id: \.self) { item in
                Text(item.description)
                    .onTapGesture {
                        vm.removeDataFromArray()
                    }
            }
        }
    }
}

struct GenericsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GenericsBootcamp()
    }
}
