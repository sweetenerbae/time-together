import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    loginSection()
                    settingsSection()
                    supportSection()
                    
                    Spacer(minLength: 40)
                }
                .padding(.top, 20)
            }
            .navigationBarTitleDisplayMode(.inline)
            .background(Color("whiteAsset"))
        }
    }
    
    // MARK: - Subviews
    
    private func loginSection() -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Войдите в профиль")
                .font(.system(size: 28, weight: .bold))
                .foregroundStyle(Color.labelBlack)
            
            Text("Чтобы обращаться в поддержку и иметь возможность присоединиться к своей семье")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(Color.labelBlack)
            
            ActionButton(
                title: "Войти",
                action: {},
                backgroundColor: Color.primaryPurple,
                foregroundColor: Color("whiteAsset")
            )
        }
        .padding(.horizontal, 20)
    }
    
    private func settingsSection() -> some View {
        cardContainer {
            VStack(spacing: 0) {
                sectionHeader("Настройки")
                
                SettingsRow(title: "Уведомления", action: {})
                Divider().padding(.leading, 20)
                SettingsRow(title: "Конфиденциальность", action: {})
            }
        }
    }
    
    private func supportSection() -> some View {
        cardContainer {
            VStack(spacing: 0) {
                sectionHeader("Поддержка")
                
                SettingsRow(title: "Не могу зарегистрироваться", action: {})
                Divider().padding(.leading, 20)
                SettingsRow(title: "Неверно отображаются интересы", action: {})
                Divider().padding(.leading, 20)
                SettingsRow(title: "Про ограничения по времени", action: {})
                Divider().padding(.leading, 20)
                SettingsRow(title: "Про семью", action: {})
            }
        }
    }
    
    // MARK: - Reusable Components
    
    private func cardContainer<Content: View>(@ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            content()
        }
        .background(Color.backgroundGray)
        .cornerRadius(12)
        .padding(.horizontal, 20)
    }
    
    private func sectionHeader(_ title: String) -> some View {
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .padding(.vertical, 16)
            .padding(.leading, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDisplayName("Light Mode")
        
        ProfileView()
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Mode")
    }
}
