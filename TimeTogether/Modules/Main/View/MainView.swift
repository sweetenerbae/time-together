import SwiftUI

struct MainView: View {
    @State var searchText: String = ""

    var body: some View {
        VStack(spacing: 0) {
            SearchBar(searchText: $searchText)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
            
            Divider()
            
            // Основной контент
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
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

                    // Факт дня
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
                        
//                        Spacer()
                    }
                    .padding(.horizontal, 20)

                    // Ежедневное задание
                    VStack(alignment: .leading, spacing: 10) {
                        Text("12 баллов")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.primaryPurple)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Ежедневное задание")
                            .font(.system(size: 20, weight: .bold))
                        
                        Text("Испеките шоколадные печенья")
                            .font(.system(size: 16))
                        
                        HStack(spacing: 6) {
                            Button(action: {
                                // Действие для кнопки "Подробнее"
                            }) {
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
                                                        
                            Button(action: {}){
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
                    .frame(maxWidth: .infinity)
                    .padding(20)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
                    .padding(.horizontal, 20)

                    // Семейные челенджи
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Семейные челленджи")
                            .font(.system(size: 24, weight: .bold))
                        
                        Image("challenges")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .frame(height: 140)
                        
                        Button(action: {
                        }) {
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
                    
                    // Игры для всей семьи
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Игры для всей семьи")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.horizontal, 20)

                        HStack(spacing: 12) {
                            GameCard(
                                imageName: "game1",
                                title: "Гамли",
                                screenWidth: 390
                            )

                            GameCard(
                                imageName: "game2",
                                title: "5 Букв",
                                screenWidth: 390
                            )

                            GameCard(
                                imageName: "game3",
                                title: "Спортакус",
                                screenWidth: 390
                            )
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.vertical, 16)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
                    .padding(.horizontal, 20)

                    // Рекомендуем посетить
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Рекомендуем посетить")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.horizontal, 20)

                        VStack(spacing: 12) {
                            PlaceCard(
                                imageName: "place1",
                                title: "Сулакский каньон",
                                subtitle: "От 2.000 ₽",
                                icon: "bus.fill",
                                screenWidth: 390
                            )

                            PlaceCard(
                                imageName: "place2",
                                title: "Гончарное искусство",
                                subtitle: "Бесплатно",
                                icon: "hand.raised.fill",
                                screenWidth: 390
                            )

                            PlaceCard(
                                imageName: "place3",
                                title: "Стендап С. Орлова",
                                subtitle: "От 2.400 ₽",
                                icon: "mic.fill",
                                screenWidth: 390
                            )
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.vertical, 16)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
                    .padding(.horizontal, 20)

                    // Квизы
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Квизы")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.horizontal, 20)

                        VStack(spacing: 12) {
                            QuizCard(
                                imageName: "quiz1",
                                title: "Исторический квиз",
                                difficulty: "Средняя сложность",
                                screenWidth: 390
                            )

                            QuizCard(
                                imageName: "quiz2",
                                title: "Тест на знание фильмов",
                                difficulty: "Средняя сложность",
                                screenWidth: 390
                            )

                            QuizCard(
                                imageName: "quiz3",
                                title: "Что? Где? Когда?",
                                difficulty: "Легкий уровень",
                                screenWidth: 390
                            )
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.vertical, 16)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
                    .padding(.horizontal, 20)
                }
            }
            .background(Color("whiteAsset"))

            // Нижняя навигационная панель
            VStack(spacing: 0) {
                Divider()

                HStack {
                    Spacer()
                    VStack(spacing: 4) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 24))
                        Text("Главная")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(.black)

                    Spacer()
                    VStack(spacing: 4) {
                        Image(systemName: "film")
                            .font(.system(size: 24))
                        Text("Интересы")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(.gray)

                    Spacer()
                    VStack(spacing: 4) {
                        ZStack(alignment: .topTrailing) {
                            Image(systemName: "person.fill")
                                .font(.system(size: 24))

                            ZStack {
                                Circle()
                                    .fill(Color.primaryPurple)
                                    .frame(width: 12, height: 12)
                                Text("3")
                                    .font(.system(size: 8, weight: .bold))
                                    .foregroundColor(.white)
                            }
                            .offset(x: 6, y: -6)
                        }
                        Text("Профиль")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.vertical, 10)
            }
        }
        .background(Color("whiteAsset"))

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
