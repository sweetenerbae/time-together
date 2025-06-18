import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    // Header Section
                    VStack(spacing: 16) {
                        Text("Войдите в профиль")
                            .font(.system(size: 28, weight: .bold))
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color.labelBlack)
                            .padding(.horizontal, 20)

                        
                        Text("Чтобы обращаться в поддержку и иметь возможность присоединиться к своей семье")
                            .font(.system(size: 16, weight: .regular))
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color.labelBlack)
                            .padding(.horizontal, 20)
                        
                        ActionButton(title: "Войти",
                                               action: {},
                                               backgroundColor: Color.primaryPurple,
                                               foregroundColor: Color("whiteAsset"))
                            .padding(.horizontal, 20)
                            .padding(.bottom, 30)
                    }
                    .padding(.top, 20)
                    
                    // Settings Section
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Настройки")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 12)
                        
                        VStack(spacing: 0) {
                            SettingsRow(title: "Уведомления", action: {})
                            Divider().padding(.leading, 20)
                            SettingsRow(title: "Конфиденциальность", action: {})
                        }
                        .background(Color.backgroundGray)
                        .cornerRadius(12)
                        .padding(.horizontal, 20)
                    }
                    
                    // Support Section
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Поддержка")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 12)
                        
                        VStack(spacing: 0) {
                            SettingsRow(title: "Не могу зарегистрироваться", action: {})
                            Divider().padding(.leading, 20)
                            SettingsRow(title: "Неверно отображаются интересы", action: {})
                            Divider().padding(.leading, 20)
                            SettingsRow(title: "Про ограничения по времени", action: {})
                            Divider().padding(.leading, 20)
                            SettingsRow(title: "Про семью", action: {})
                        }
                        .background(Color.backgroundGray)
                        .cornerRadius(12)
                        .padding(.horizontal, 20)
                    }
                    
                    Spacer(minLength: 40)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .background(Color("whiteAsset"))

        }
    }
}

struct SettingsRow: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(title)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.leading)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
                    .font(.system(size: 14, weight: .medium))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    ProfileView()
}
