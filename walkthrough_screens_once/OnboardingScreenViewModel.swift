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
}
