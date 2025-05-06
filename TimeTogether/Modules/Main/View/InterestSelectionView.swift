import SwiftUI

struct InterestSelectionView: View {
    @State var searchText: String = ""
    
    // State to track selected interests
    @State private var selectedInterests: Set<String> = []
    
    // All available interests with their image names
    let interests: [(id: String, name: String, imageName: String)] = [
        ("anime", "Аниме", "anime_image"),
        ("movies", "Фильмы", "movies_image"),
        ("art", "Искусство", "art_image"),
        ("literature", "Литература", "literature_image"),
        ("math", "Математика", "math_image"),
        ("religion", "Религия", "religion_image"),
        ("biography", "Биография", "biography_image"),
        ("music", "Музыка", "music_image"),
        ("games", "Игры", "games_image"),
        ("tech", "Технологии", "tech_image"),
        ("sport", "Спорт", "sport_image"),
        ("series", "Сериалы", "series_image"),
        ("cooking", "Кулинария", "cooking_image"),
        ("fashion", "Мода", "fashion_image"),
        ("nature", "Природа", "nature_image"),
        ("health", "Здоровье", "health_image")
    ]
    
    let minimumSelections = 5
    var onFinish: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 8) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(hex: "828282"))
                    
                    TextField("Быстро найдём желаемое", text: $searchText)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
                .background(Color.backgroundGray)
                .cornerRadius(8)
                
                Button(action: {}){
                    Image("bell")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.labelBlack)
                        .padding(12)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            
            Divider()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.backgroundGray)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 20)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Выберите минимум 5 интересных Вам направлений")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundStyle(Color.labelBlack)
                            
                            Text("Это нужно для формирования идеальных рекомендаций специально для Вас")
                                .font(.system(size: 16, weight: .regular))
                                .foregroundStyle(Color.labelBlack)
                        }
                        .padding(20)
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.top, 20)
                    
                    // Grid of interests
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                        ForEach(interests, id: \.id) { interest in
                            InterestCell(
                                name: interest.name,
                                imageName: interest.imageName,
                                isSelected: selectedInterests.contains(interest.id)
                            )
                            .aspectRatio(1, contentMode: .fit) // делает ячейку квадратной
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
        .background(Color.whiteAsset)
        .hideKeyboardOnTap()
    }
}

#Preview {
    InterestSelectionView(onFinish: {})
}
