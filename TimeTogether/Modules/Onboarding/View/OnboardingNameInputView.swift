import SwiftUI

struct OnboardingNameInputView: View {
    @ObservedObject var viewModel = NameInputViewModel()
    
    var onFinish: () -> Void

    var body: some View {
        ZStack() {
            VStack(spacing: 0) {
                
                VStack() {
                    Image("NamePng")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
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
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                }
                
                Spacer()
                
                VStack(spacing: 12) {
                    TextField("Имя", text: $viewModel.firstName)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .textInputAutocapitalization(.words)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                    
                    TextField("Фамилия*", text: $viewModel.lastName)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .textInputAutocapitalization(.words)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                    
                    TextField("Отчество", text: $viewModel.middleName)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .textInputAutocapitalization(.words)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                    
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 24)
                
                OnboardingActionButton(title: "Завершить",
                                       action: onFinish,
                                       backgroundColor: Color.primaryPurple,
                                       foregroundColor: Color("white"))
                    .padding(.horizontal, 20)
            }
            .background(Color("white"))
            .hideKeyboardOnTap()
        }
    }
}

#Preview {
    OnboardingNameInputView(onFinish: {})
}
