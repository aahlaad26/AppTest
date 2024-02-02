//
//  Content2.swift
//  AppTest
//
//  Created by user2 on 01/02/24.
//

import SwiftUI

struct Content2: View {
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            // Content View for each tab
            if selectedTab == 0 {
                TabViewSelectionApp()
            } else if selectedTab == 1 {
                SecondTabView()
            } else {
                ThirdTabView()
            }

            // Tab Bar
            TabBarView(selectedTab: $selectedTab)
                
        }
    }
}

#Preview {
    Content2()
}
