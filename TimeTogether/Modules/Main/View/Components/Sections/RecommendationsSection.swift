import SwiftUI

struct RecommendationsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Рекомендуем посетить")
                .font(.system(size: 24, weight: .bold))
                .padding(.horizontal, 20)

            VStack(spacing: 12) {
                PlaceCard(imageName: "place1", title: "Сулакский каньон", subtitle: "От 2.000 ₽", icon: "bus.fill", screenWidth: 390)
                PlaceCard(imageName: "place2", title: "Гончарное искусство", subtitle: "Бесплатно", icon: "hand.raised.fill", screenWidth: 390)
                PlaceCard(imageName: "place3", title: "Стендап С. Орлова", subtitle: "От 2.400 ₽", icon: "mic.fill", screenWidth: 390)
            }
            .padding(.horizontal, 20)
        }
        .padding(.vertical, 16)
        .background(Color.backgroundGray)
        .cornerRadius(16)
        .padding(.horizontal, 20)
    }
}
