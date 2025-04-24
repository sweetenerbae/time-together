<<<<<<< HEAD
//
//  OnboardingPage.swift
//  TimeTogether
//
//  Created by Diana Kuchaeva on 24.04.25.
//

=======
import SwiftUI

struct OnboardingPageIndicator: View {
    let numberOfPages: Int
    let currentPage: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                Circle()
                    .fill(index == currentPage ? Color.primaryPurple : Color.backgroundGray)
                    .frame(width: 8, height: 8)
            }
        }
    }
}
>>>>>>> 76a384b (feat(onboarding): add and implement components: ActionButton, PageIndicator)
