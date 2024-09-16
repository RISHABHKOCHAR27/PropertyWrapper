//
//  ScreenView.swift
//  walkthrough_screens_once
//
//  Created by nuclei on 08/09/24.
//

import SwiftUI

struct ScreenView: View {
    
    @StateObject var viewModel = OnboardingScreenViewModel()
    
    var body: some View {
        if viewModel.currentPage == 1 {
            OnboardingScreen(image: "food", title: "Order now", viewModel: viewModel)
        } else if viewModel.currentPage == 2 {
            OnboardingScreen(image: "delivery", title: "Get delivered", viewModel: viewModel)
        } else if viewModel.currentPage == 3 {
            OnboardingScreen(image: "pay", title: "Easy pay", viewModel: viewModel)
        }
    }
}

#Preview {
    ScreenView()
}
