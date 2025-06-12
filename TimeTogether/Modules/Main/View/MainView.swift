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

struct HeaderSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Место, где семья")
                .font(.system(size: 28, weight: .bold))

            HStack(spacing: 0) {
                Text("становится ")
                    .font(.system(size: 28, weight: .bold))

                Text("ближе")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.primaryPurple)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}

struct FactOfTheDaySection: View {
    var body: some View {
        HStack(spacing: 16) {
            Image("fact_of_the_day")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 9))
                .frame(width: 64, height: 85)
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(Color.primaryPurple, lineWidth: 6)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(Color("whiteAsset"), lineWidth: 2)
                )
                .padding(.leading, 8)

            VStack(alignment: .leading, spacing: 5) {
                Image(systemName: "lightbulb.fill")
                    .foregroundColor(.primaryPurple)
                    .font(.system(size: 20))

                VStack(alignment: .leading, spacing: 4) {
                    Text("Факт дня")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Объятия защищают сердце от болезней")
                        .font(.system(size: 12))
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(16)
            .background(Color.backgroundGray)
            .cornerRadius(16)
        }
        .padding(.horizontal, 20)
    }
}

struct DailyTaskSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("12 баллов")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primaryPurple)

            Text("Ежедневное задание")
                .font(.system(size: 20, weight: .bold))

            Text("Испеките шоколадные печенья")
                .font(.system(size: 16))

            HStack(spacing: 6) {
                Button(action: {}) {
                    HStack {
                        Text("Подробнее")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(Color.labelBlack)

                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(Color.labelBlack)
                    }
                    .frame(minWidth: 200, maxWidth: .infinity)
                    .padding(.vertical, 13)
                    .background(Color("whiteAsset"))
                    .cornerRadius(12)
                }

                Button(action: {}) {
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.gray)
                        .padding(12)
                        .background(Color("whiteAsset"))
                        .cornerRadius(12)
                }
                .padding(.leading, 8)
            }
        }
        .padding(20)
        .background(Color.backgroundGray)
        .cornerRadius(16)
        .padding(.horizontal, 20)
    }
}

struct ChallengesSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Семейные челленджи")
                .font(.system(size: 24, weight: .bold))

            Image("challenges")
                .resizable()
                .scaledToFit()
                .frame(height: 140)

            Button(action: {}) {
                Text("Создать челлендж")
                    .font(.system(size: 16, weight: .medium))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(Color.labelBlack)
                    .background(Color("whiteAsset"))
                    .cornerRadius(12)
            }
        }
        .padding(20)
        .background(Color.backgroundGray)
        .cornerRadius(16)
        .padding(.horizontal, 20)
    }
}

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

struct QuizzesSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Квизы")
                .font(.system(size: 24, weight: .bold))
                .padding(.horizontal, 20)

            VStack(spacing: 12) {
                QuizCard(imageName: "quiz1", title: "Исторический квиз", difficulty: "Средняя сложность", screenWidth: 390)
                QuizCard(imageName: "quiz2", title: "Тест на знание фильмов", difficulty: "Средняя сложность", screenWidth: 390)
                QuizCard(imageName: "quiz3", title: "Что? Где? Когда?", difficulty: "Легкий уровень", screenWidth: 390)
            }
            .padding(.horizontal, 20)
        }
        .padding(.vertical, 16)
        .background(Color.backgroundGray)
        .cornerRadius(16)
        .padding(.horizontal, 20)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
