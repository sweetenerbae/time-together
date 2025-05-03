import SwiftUI

struct OnboardingNameInputView: View {
    @ObservedObject var viewModel = NameInputViewModel()
    
    var onFinish: () -> Void

    var body: some View {
        ZStack() {
            VStack(spacing: 0) {
                
                OnboardingPageIndicator(totalPages: 4, currentPage: 3)
                
                Image("NamePng")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                
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
                
                Spacer()
                
                VStack(spacing: 12) {
                    TextField("Имя", text: $viewModel.firstName)
                        .padding(.horizontal)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .textInputAutocapitalization(.words)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                    
                    TextField("Фамилия", text: $viewModel.lastName)
                        .padding(.horizontal)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .textInputAutocapitalization(.words)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                    
                    TextField("Отчество", text: $viewModel.middleName)
                        .padding(.horizontal)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .textInputAutocapitalization(.words)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                    
                }
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 16)
                
                OnboardingActionButton(title: "Завершить", action: onFinish, backgroundColor: Color.primaryPurple, foregroundColor: Color.white)
                    .padding(.horizontal)
                    .padding(.bottom, 60)
            }
            .background(Color.white)
            .ignoresSafeArea()
            .hideKeyboardOnTap()
        }
    }
}

#Preview {
    OnboardingNameInputView(onFinish: {})
}
