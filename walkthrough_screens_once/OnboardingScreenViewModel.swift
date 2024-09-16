//
//  OnboardingScreenViewModel.swift
//  walkthrough_screens_once
//
//  Created by nuclei on 09/09/24.
//

import Foundation

class OnboardingScreenViewModel: ObservableObject {
    @Published var currentPage: Int = 1
    var totalPage: Int = 3
    // Use UserDefaults to store onboarding completion status
    private let onboardingKey = "hasSeenOnboarding"
    
    init() {
        // Check if the onboarding has already been completed
        if UserDefaults.standard.bool(forKey: onboardingKey) {
            // Set currentPage to bypass the onboarding screens
            currentPage = totalPage + 1
        }
    }
    
    // Method to set onboarding as completed
    func completeOnboarding() {
        UserDefaults.standard.set(true, forKey: onboardingKey)
    }
}
