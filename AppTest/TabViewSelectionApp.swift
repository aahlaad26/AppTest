//
//  TabViewSelectionApp.swift
//  AppTest
//
//  Created by user2 on 01/02/24.
//

import SwiftUI

struct TabViewSelectionApp: View {
    @State private var selectedTab = 0

    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    TabBarView(selectedTab: $selectedTab)
                        .fixedSize(horizontal: true, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    // Content View for each tab
                    if selectedTab == 0 {
                        ScrollViewTwo()
                    } else if selectedTab == 1 {
                        ScrollViewOne()
                    } else if selectedTab == 2{
                        ScrollViewThree()
                    }
                   
                    VStack{}.padding(.bottom,300)
                    // Tab Bar
                    
                }
            }
        }
    }
}



struct SecondTabView: View {
    var body: some View {
        Text("Second Tab Content")
            .padding()
            .background(Color.green)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ThirdTabView: View {
    var body: some View {
        Text("Third Tab Content")
            .padding()
            .background(Color.blue)
            .edgesIgnoringSafeArea(.bottom)
    }
}



#Preview {
    TabViewSelectionApp()
}
struct TextView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .font(.headline)
            .foregroundColor(.blue)
            .padding()
    }
}

