import SwiftUI

struct OnboardingEmailInputView: View {
    
    @Binding var email: String
    let isNextEnabled: Bool

    let onNext: () -> Void
    let onBack: () -> Void
    let onSkip: () -> Void
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Spacer()
                // Верхний блок: иллюстрация + текст
                Image("EmailOnboarding")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Электронная почта")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundStyle(Color.labelBlack)
                    
                    Text("Введите адрес электронной почты для регистрации")
                        .font(.system(size: 18, weight: .regular))
                        .foregroundStyle(Color.labelBlack)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.bottom, 28)
                            

                // Нижний блок: поле ввода + кнопки
                VStack(spacing: 12) {
                    
                    HStack(spacing: 12) {
                        // Back Button
                        Button(action: onBack) {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(Color.black)
                                .frame(width: 56)
                        }
                        .frame(height: 56)
                        .background(Color.backgroundGray)
                        .cornerRadius(12)

                        // Email TextField
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Электронная почта*")
                                .font(.caption)
                                .foregroundStyle(Color.labelBlack)
                            
                            TextField("example@mail.com", text: $email)
                                .foregroundStyle(Color.primaryPurple)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 56)
                        .background(Color.backgroundGray)
                        .cornerRadius(12)

                        // Next Button
                        Button(action: onNext) {
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.white)
                                .frame(width: 56)
                        }
                        .frame(height: 56)
                        .background(Color.primaryPurple)
                        .cornerRadius(12)
                        .disabled(!isNextEnabled)
                    }
                    .padding(.horizontal)
                    
                    // Skip Button
                    OnboardingActionButton(title: "Пропустить", action: onSkip, backgroundColor: Color.backgroundGray, foregroundColor: Color.labelBlack)
                        .padding(.horizontal)
                }
                .padding(.bottom, 30)
            }
            .background(Color("white"))
            .hideKeyboardOnTap()
        }
    }
}

#Preview {
    OnboardingEmailInputView(
        email: .constant("example@mail.com"),
        isNextEnabled: true,
        onNext: {},
        onBack: {},
        onSkip: {}
    )
}
