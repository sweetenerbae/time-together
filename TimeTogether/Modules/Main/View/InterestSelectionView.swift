import SwiftUI

struct InterestSelectionView: View {
    @State private var searchText: String = ""
    @State private var selectedInterests: Set<String> = []
    
    // All available interests with their image names
    let interests: [Interest] = [
            Interest(id: "anime", name: "Аниме", imageName: "anime_image"),
            Interest(id: "movies", name: "Фильмы", imageName: "movies_image"),
            Interest(id: "art", name: "Искусство", imageName: "art_image"),
            Interest(id: "literature", name: "Литература", imageName: "literature_image"),
            Interest(id: "math", name: "Математика", imageName: "math_image"),
            Interest(id: "religion", name: "Религия", imageName: "religion_image"),
            Interest(id: "biography", name: "Биография", imageName: "biography_image"),
            Interest(id: "music", name: "Музыка", imageName: "music_image"),
            Interest(id: "games", name: "Игры", imageName: "games_image"),
            Interest(id: "tech", name: "Технологии", imageName: "tech_image"),
            Interest(id: "sport", name: "Спорт", imageName: "sport_image"),
            Interest(id: "series", name: "Сериалы", imageName: "series_image"),
            Interest(id: "cooking", name: "Кулинария", imageName: "cooking_image"),
            Interest(id: "fashion", name: "Мода", imageName: "fashion_image"),
            Interest(id: "nature", name: "Природа", imageName: "nature_image"),
            Interest(id: "health", name: "Здоровье", imageName: "health_image")
        ]
        
    
    let minimumSelections = 5
    var onFinish: () -> Void
   
    var body: some View {
        VStack(spacing: 0) {
            SearchBar(searchText: $searchText)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)

            Divider()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.backgroundGray)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Выберите минимум 5 интересных Вам направлений")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundStyle(Color.labelBlack)
                            
                            Text("Это нужно для формирования идеальных рекомендаций специально для Вас")
                                .font(.system(size: 16, weight: .regular))
                                .foregroundStyle(Color.labelBlack)
                        }
                        .padding(20)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 20)
                    
                    // Grid of interests
                    LazyVGrid(
                        columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ],
                        spacing: 12
                    ) {
                        ForEach(interests) { interest in
                            InterestCell(
                                name: interest.name,
                                imageName: interest.imageName,
                                isSelected: selectedInterests.contains(interest.id)
                            )
                            .onTapGesture {
                                if selectedInterests.contains(interest.id) {
                                    selectedInterests.remove(interest.id)
                                } else {
                                    selectedInterests.insert(interest.id)
                                }
                            }
                            .aspectRatio(1, contentMode: .fit)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.bottom, 80)
            }

            OnboardingActionButton(title: "Сохранить",
                                   action: onFinish,
                                   backgroundColor: .primaryPurple,
                                   foregroundColor: Color("whiteAsset"))
            .padding(.horizontal, 20)
            .padding(.bottom, 30)
            
        }
        .background(Color("whiteAsset"))
        .hideKeyboardOnTap()
    }
}

#Preview {
    InterestSelectionView(onFinish: {})

}
