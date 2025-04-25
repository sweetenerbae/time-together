import SwiftUI

final class OnboardingViewModel: ObservableObject {
    @Published var currentPage: Int = 0
    @Published var email: String = ""

    var buttonTitle: String {
        switch currentPage {
        case 0, 1: return "Далее"
        case 2: return "Пропустить"
        case 3: return "Завершить"
        default: return ""
        }
    }

    var isLastPage: Bool { currentPage == 3 }

    var isActionEnabled: Bool {
        if currentPage == 2 {
            return email.contains("@") && email.contains(".")
        }
        return true
    }

    var actionButtonColor: Color {
        switch currentPage {
        case 2:
            return .gray.opacity(0.3)
        default:
            return .purple
        }
    }
    
    func nextStep() {
        if !isLastPage {
            currentPage += 1
        }
    }
}
