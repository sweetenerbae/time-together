import SwiftUI

struct GamesSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Игры для всей семьи")
                .font(.system(size: 24, weight: .bold))
                .padding(.horizontal, 20)

            HStack(spacing: 12) {
                GameCard(imageName: "game1", title: "Гамли", screenWidth: 390)
                GameCard(imageName: "game2", title: "5 Букв", screenWidth: 390)
                GameCard(imageName: "game3", title: "Спортакус", screenWidth: 390)
            }
            .padding(.horizontal, 20)
        }
        .padding(.vertical, 16)
        .background(Color.backgroundGray)
        .cornerRadius(16)
        .padding(.horizontal, 20)
    }
}
