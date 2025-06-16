import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: MainTab

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 30) {
                Spacer()
                tabItem(image: "house.fill", title: "Главная", tab: .home)
                Spacer()
                tabItem(image: "film", title: "Интересы", tab: .interests)
                Spacer()
                tabItem(image: "person.fill", title: "Профиль", tab: .profile, badgeCount: 3)
                Spacer()
            }
            .padding(.vertical, 10)
            .padding(.bottom, 20)
            .background(Color("whiteAsset"))
        }
    }

    private func tabItem(image: String, title: String, tab: MainTab, badgeCount: Int = 0) -> some View {
        VStack(spacing: 4) {
            ZStack(alignment: .topTrailing) {
                Image(systemName: image)
                    .font(.system(size: 24))
                if badgeCount > 0 {
                    ZStack {
                        Circle().fill(Color.primaryPurple).frame(width: 12, height: 12)
                        Text("\(badgeCount)")
                            .font(.system(size: 8, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .offset(x: 6, y: -6)
                }
            }
            Text(title).font(.system(size: 12))
        }
        .foregroundColor(selectedTab == tab ? Color.labelBlack : Color.gray)
        .onTapGesture {
            selectedTab = tab
        }
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.home))
}
