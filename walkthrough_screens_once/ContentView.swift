//
//  ContentView.swift
//  walkthrough_screens_once
//
//  Created by nuclei on 08/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: OnboardingScreenViewModel
    
    var body: some View {
        if viewModel.currentPage > viewModel.totalPage {
            HomeView()
                .onAppear() {
                    viewModel.completeOnboarding()
                }
        } else {
            ScreenView()
        }
    }
}

#Preview {
    ContentView(viewModel: OnboardingScreenViewModel())
}
