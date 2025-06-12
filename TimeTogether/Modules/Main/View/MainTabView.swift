import SwiftUI

enum MainTab: Int {
    case home, interests, profile
}

struct MainTabView: View {
    @State private var selectedTab: MainTab = .home

    var body: some View {
        VStack(spacing: 0) {
            switch selectedTab {
            case .home:
                MainView()
            case .interests:
                InterestSelectionView(onFinish: {})
            case .profile:
                ProfileView()
            }

            CustomTabBar(selectedTab: $selectedTab)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
