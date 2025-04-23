import SwiftUI

struct OnboardingEmailInputView: View {
    
    // MARK: - Bindings
    @Binding var email: String

    // MARK: - Callbacks
    let onNext: () -> Void
    let onBack: () -> Void
    let onSkip: () -> Void
    
    var body: some View {
        Spacer()
        
        VStack(spacing: 0) {
            // MARK: - Illustration
            Image("EmailOnboarding")
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .padding(.vertical, 40)
            
            // MARK: - Title & Description
            VStack(alignment: .leading, spacing: 8) {
                Text("Электронная почта")
                    .font(.system(size: 28, weight: .bold))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.labelBlack)
                
                Text("Введите адрес электронной почты для регистрации")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(Color.labelBlack)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // MARK: - Email Input & Navigation
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
                
                // Email Field
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
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            // MARK: - Skip Button
            Button(action: onSkip) {
                Text("Пропустить")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundStyle(.black)
                    .background(Color.backgroundGray)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
            .padding(.top, 32)
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    OnboardingEmailInputView(
        email: .constant("example@mail.com"),
        onNext: {},
        onBack: {},
        onSkip: {}
    )
}
