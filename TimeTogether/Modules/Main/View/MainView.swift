import SwiftUI

struct MainView: View {
    @State private var searchText: String = ""

    var body: some View {
        VStack(spacing: 0) {
            SearchBar(searchText: $searchText)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)

            Divider()

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    HeaderSection()
                    FactOfTheDaySection()
                    DailyTaskSection()
                    ChallengesSection()
                    GamesSection()
                    RecommendationsSection()
                    QuizzesSection()
                }
                .padding(.vertical)
            }
            .background(Color("whiteAsset"))
        }
        .background(Color("whiteAsset"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
