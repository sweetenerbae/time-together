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
    
    var isFirstPage: Bool { currentPage == 0 }
    
    var isEmailValid: Bool {
           let emailRegex = #"^\S+@\S+\.\S+$"#
           return email.range(of: emailRegex, options: .regularExpression) != nil
       }

    var isActionButtonEnabled: Bool {
        if currentPage == 2 {
            return true
        }
        return true
    }

    var isNextButtonEnabled: Bool {
        isEmailValid
    }
    
    var actionButtonColor: Color {
        switch currentPage {
        case 2:
            return .backgroundGray
        default:
            return .primaryPurple
        }
    }
    
    func backStep () {
        if !isFirstPage {
            currentPage -= 1
        }
    }
    
    func nextStep() {
        if !isLastPage {
            currentPage += 1
        }
    }
}
