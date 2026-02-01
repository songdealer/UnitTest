//
//  ContentView.swift
//  UnitTestTests
//
//  Created by user on 2/1/26.
//

import SwiftUI

@main
struct UnitTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class ContentFeature: ObservableObject {
    @Published var count: Int = 0
    
    func increaseCount() {
        count += 1
    }
    func decreaseCount() {
        count -= 1
    }
}

struct ContentView: View {
    @StateObject var contentFeature = ContentFeature()
    
    var body: some View {
        HStack {
            Button(action: {
                contentFeature.decreaseCount()
            }, label: {
                Text("-")
                    .font(.system(size: 28))
                    .frame(width: 24, height: 24)
                    .background(Color.gray)
            })
        
            Text("\(contentFeature.count)")
                .font(.system(size: 60))
    
            Button(action: {
                contentFeature.increaseCount()
            }, label: {
                Text("+")
                    .font(.system(size: 28))
                    .frame(width: 24, height: 24)
                    .background(Color.gray)
            })
        }
    }
}

#Preview {
    ContentView()
}
