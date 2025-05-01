import SwiftUI

struct OnboardingNameInputView: View {
    var onFinish: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            OnboardingPageIndicator(totalPages: 4, currentPage: 2)
            
            Image("NamePng")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
            
            // MARK: - Title & Description
            VStack(alignment: .leading, spacing: 8) {
                Text("Введите ваше ФИО")
                    .font(.system(size: 28, weight: .bold))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.labelBlack)
                
                Text("Это требуется для того, чтобы можно было присоединиться к семье")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(Color.labelBlack)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Button("завершить") {
                onFinish()
            }
        }
    }
}

#Preview {
    OnboardingNameInputView(onFinish: <#T##() -> Void#>)
}
