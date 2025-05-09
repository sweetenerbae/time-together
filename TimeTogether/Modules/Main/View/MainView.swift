import SwiftUI

struct MainView: View {
    @State var searchText: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
            
            ZStack(alignment: .bottom) {
                SearchBar(searchText: $searchText) .padding(.horizontal, 20)
                    .padding(.vertical, 10)

                // Основной контент
                ScrollView {
                    VStack(alignment: .leading, spacing: screenWidth * 0.06) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Место, где семья")
                                .font(.system(size: min(32, screenWidth * 0.08), weight: .bold))
                            
                            HStack(spacing: 0) {
                                Text("становится ")
                                    .font(.system(size: min(32, screenWidth * 0.08), weight: .bold))
                                
                                Text("ближе")
                                    .font(.system(size: min(32, screenWidth * 0.08), weight: .bold))
                                    .foregroundColor(.primaryPurple)
                            }
                        }
                        .padding(.horizontal, screenWidth * 0.05)
                        .padding(.top, screenWidth * 0.05)
                        
                        // Факт дня
                        HStack(spacing: screenWidth * 0.04) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color.primaryPurple)
                                
                                Image(systemName: "fact_of_the_day")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.primaryPurple)
                                    .padding(10)
                            }
                            .frame(width: screenWidth * 0.25, height: screenWidth * 0.25)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.primaryPurple, lineWidth: 2)
                            )
                            
                            // Факт дня текст
                            VStack(alignment: .leading, spacing: 8) {
                                HStack(spacing: 8) {
                                    Image(systemName: "lightbulb.fill")
                                        .foregroundColor(.primaryPurple)
                                        .font(.system(size: min(20, screenWidth * 0.05)))
                                    
                                    Text("Факт дня")
                                        .font(.system(size: min(18, screenWidth * 0.045), weight: .bold))
                                }
                                
                                Text("Объятия защищают сердце от болезней")
                                    .font(.system(size: min(16, screenWidth * 0.04)))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            
                            Spacer()
                        }
                        .padding(screenWidth * 0.04)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.horizontal, screenWidth * 0.05)
                        
                        // Ежедневное задание
                        VStack(alignment: .leading, spacing: screenWidth * 0.04) {
                            Text("12 баллов")
                                .font(.system(size: min(16, screenWidth * 0.04), weight: .medium))
                                .foregroundColor(.primaryPurple)
                            
                            Text("Ежедневное задание")
                                .font(.system(size: min(24, screenWidth * 0.06), weight: .bold))
                            
                            Text("Испеките шоколадные печенья")
                                .font(.system(size: min(18, screenWidth * 0.045)))
                            
                            HStack {
                                Button(action: {
                                    // Действие для кнопки "Подробнее"
                                }) {
                                    HStack {
                                        Text("Подробнее")
                                            .font(.system(size: min(16, screenWidth * 0.04), weight: .medium))
                                        
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: min(14, screenWidth * 0.035), weight: .semibold))
                                    }
                                    .padding(.horizontal, screenWidth * 0.05)
                                    .padding(.vertical, screenWidth * 0.03)
                                    .background(Color("whiteAsset"))
                                    .cornerRadius(12)
                                }
                                
                                Spacer()
                                
                                // Иконка печенья
                                Image(systemName: "circle.fill") // Замените на изображение печенья
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.brown)
                                    .frame(width: screenWidth * 0.15, height: screenWidth * 0.15)
                                
                                // Иконка времени
                                ZStack {
                                    Circle()
                                        .fill(Color.gray.opacity(0.3))
                                        .frame(width: screenWidth * 0.1, height: screenWidth * 0.1)
                                    
                                    Image(systemName: "clock")
                                        .foregroundColor(.gray)
                                        .font(.system(size: screenWidth * 0.05))
                                }
                                .padding(.leading, 8)
                            }
                        }
                        .padding(screenWidth * 0.05)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.horizontal, screenWidth * 0.05)
                        
                        // Семейные челенджи
                        VStack(alignment: .leading, spacing: screenWidth * 0.04) {
                            Text("Семейные челленджи")
                                .font(.system(size: min(24, screenWidth * 0.06), weight: .bold))
                            
                            // Иллюстрации
                            Image(systemName: "person.fill") // Замените на свое изображение
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity)
                                .frame(height: screenWidth * 0.35)
                                
                            // Кнопка создать челлендж
                            Button(action: {
                                // Действие для кнопки "Создать челлендж"
                            }) {
                                Text("Создать челлендж")
                                    .font(.system(size: min(16, screenWidth * 0.04), weight: .medium))
                                    .padding(.vertical, screenWidth * 0.04)
                                    .frame(maxWidth: .infinity)
                                    .background(Color("whiteAsset"))
                                    .cornerRadius(12)
                            }
                        }
                        .padding(screenWidth * 0.05)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.horizontal, screenWidth * 0.05)
                        
                        // Раздел "Игры для всей семьи"
                        VStack(alignment: .leading, spacing: screenWidth * 0.04) {
                            Text("Игры для всей семьи")
                                .font(.system(size: min(24, screenWidth * 0.06), weight: .bold))
                                .padding(.horizontal, screenWidth * 0.05)
                            
                            HStack(spacing: screenWidth * 0.03) {
                                // Карточка "Гамли"
                                GameCard(
                                    imageName: "game1", // Замените на свое изображение
                                    title: "Гамли",
                                    screenWidth: screenWidth
                                )
                                
                                // Карточка "5 Букв"
                                GameCard(
                                    imageName: "game2", // Замените на свое изображение
                                    title: "5 Букв",
                                    screenWidth: screenWidth
                                )
                                
                                // Карточка "Спортакус"
                                GameCard(
                                    imageName: "game3", // Замените на свое изображение
                                    title: "Спортакус",
                                    screenWidth: screenWidth
                                )
                            }
                            .padding(.horizontal, screenWidth * 0.05)
                        }
                        .padding(.vertical, screenWidth * 0.04)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.horizontal, screenWidth * 0.05)
                        
                        // Раздел "Рекомендуем посетить"
                        VStack(alignment: .leading, spacing: screenWidth * 0.04) {
                            Text("Рекомендуем посетить")
                                .font(.system(size: min(24, screenWidth * 0.06), weight: .bold))
                                .padding(.horizontal, screenWidth * 0.05)
                            
                            VStack(spacing: screenWidth * 0.03) {
                                // Карточка "Сулакский каньон"
                                PlaceCard(
                                    imageName: "place1", // Замените на свое изображение
                                    title: "Сулакский каньон",
                                    subtitle: "От 2.000 ₽",
                                    icon: "bus.fill",
                                    screenWidth: screenWidth
                                )
                                
                                // Карточка "Гончарное искусство"
                                PlaceCard(
                                    imageName: "place2", // Замените на свое изображение
                                    title: "Гончарное искусство",
                                    subtitle: "Бесплатно",
                                    icon: "hand.raised.fill",
                                    screenWidth: screenWidth
                                )
                                
                                // Карточка "Стендап С. Орлова"
                                PlaceCard(
                                    imageName: "place3", // Замените на свое изображение
                                    title: "Стендап С. Орлова",
                                    subtitle: "От 2.400 ₽",
                                    icon: "mic.fill",
                                    screenWidth: screenWidth
                                )
                            }
                            .padding(.horizontal, screenWidth * 0.05)
                        }
                        .padding(.vertical, screenWidth * 0.04)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.horizontal, screenWidth * 0.05)
                        
                        // Раздел "Квизы"
                        VStack(alignment: .leading, spacing: screenWidth * 0.04) {
                            Text("Квизы")
                                .font(.system(size: min(24, screenWidth * 0.06), weight: .bold))
                                .padding(.horizontal, screenWidth * 0.05)
                            
                            VStack(spacing: screenWidth * 0.03) {
                                // Карточка "Исторический квиз"
                                QuizCard(
                                    imageName: "quiz1", // Замените на свое изображение
                                    title: "Исторический квиз",
                                    difficulty: "Средняя сложность",
                                    screenWidth: screenWidth
                                )
                                
                                // Карточка "Тест на знание фильмов"
                                QuizCard(
                                    imageName: "quiz2", // Замените на свое изображение
                                    title: "Тест на знание фильмов",
                                    difficulty: "Средняя сложность",
                                    screenWidth: screenWidth
                                )
                                
                                // Карточка "Что? Где? Когда?"
                                QuizCard(
                                    imageName: "quiz3", // Замените на свое изображение
                                    title: "Что? Где? Когда?",
                                    difficulty: "Легкий уровень",
                                    screenWidth: screenWidth
                                )
                            }
                            .padding(.horizontal, screenWidth * 0.05)
                        }
                        .padding(.vertical, screenWidth * 0.04)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.horizontal, screenWidth * 0.05)
                        
                        // Отступ для нижней панели навигации
                        Spacer(minLength: screenWidth * 0.2)
                    }
                }
                .background(Color("whiteAsset"))
                
                // Нижняя навигационная панель
                VStack(spacing: 0) {
                    Divider()
                    
                    HStack {
                        Spacer()
                        
                        // Вкладка "Главная"
                        VStack(spacing: 4) {
                            Image(systemName: "house.fill")
                                .font(.system(size: screenWidth * 0.06))
                            Text("Главная")
                                .font(.system(size: screenWidth * 0.03))
                        }
                        .foregroundColor(.black)
                        
                        Spacer()
                        
                        // Вкладка "Интересы"
                        VStack(spacing: 4) {
                            Image(systemName: "film")
                                .font(.system(size: screenWidth * 0.06))
                            Text("Интересы")
                                .font(.system(size: screenWidth * 0.03))
                        }
                        .foregroundColor(.gray)
                        
                        Spacer()
                        
                        // Вкладка "Профиль" с индикатором уведомлений
                        VStack(spacing: 4) {
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: "person.fill")
                                    .font(.system(size: screenWidth * 0.06))
                                
                                // Индикатор уведомлений
                                ZStack {
                                    Circle()
                                        .fill(Color.primaryPurple)
                                        .frame(width: screenWidth * 0.05, height: screenWidth * 0.05)
                                    
                                    Text("3")
                                        .font(.system(size: screenWidth * 0.03, weight: .bold))
                                        .foregroundColor(.white)
                                }
                                .offset(x: screenWidth * 0.02, y: -screenWidth * 0.02)
                            }
                            
                            Text("Профиль")
                                .font(.system(size: screenWidth * 0.03))
                        }
                        .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .padding(.vertical, 10)
                    .background(Color("whiteAsset"))
                }
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
            }
        }
    }
}

// Компонент карточки игры
struct GameCard: View {
    let imageName: String
    let title: String
    let screenWidth: CGFloat
    
    var body: some View {
        VStack(spacing: 8) {
            // Изображение игры
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.primaryPurple)
                
                Image(imageName) // Замените на свое изображение
                    .resizable()
                    .scaledToFill()
                    .frame(width: screenWidth * 0.25, height: screenWidth * 0.25)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .frame(width: screenWidth * 0.25, height: screenWidth * 0.25)
            
            // Название игры
            Text(title)
                .font(.system(size: min(16, screenWidth * 0.04), weight: .medium))
                .multilineTextAlignment(.center)
                .frame(width: screenWidth * 0.25)
                .padding(.vertical, 8)
                .background(Color("whiteAsset"))
                .cornerRadius(12)
        }
    }
}

// Компонент карточки места
struct PlaceCard: View {
    let imageName: String
    let title: String
    let subtitle: String
    let icon: String
    let screenWidth: CGFloat
    
    var body: some View {
        HStack(spacing: screenWidth * 0.03) {
            // Изображение места
            Image(imageName) // Замените на свое изображение
                .resizable()
                .scaledToFill()
                .frame(width: screenWidth * 0.25, height: screenWidth * 0.15)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 4) {
                // Название места
                Text(title)
                    .font(.system(size: min(16, screenWidth * 0.04), weight: .medium))
                
                // Стоимость с иконкой
                HStack(spacing: 4) {
                    Image(systemName: icon)
                        .font(.system(size: min(12, screenWidth * 0.03)))
                    
                    Text(subtitle)
                        .font(.system(size: min(14, screenWidth * 0.035)))
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
        }
        .padding(screenWidth * 0.03)
        .background(Color("whiteAsset"))
        .cornerRadius(12)
    }
}

// Компонент карточки квиза
struct QuizCard: View {
    let imageName: String
    let title: String
    let difficulty: String
    let screenWidth: CGFloat
    
    var body: some View {
        HStack(spacing: screenWidth * 0.03) {
            // Изображение квиза
            Image(imageName) // Замените на свое изображение
                .resizable()
                .scaledToFill()
                .frame(width: screenWidth * 0.25, height: screenWidth * 0.15)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 4) {
                // Название квиза
                Text(title)
                    .font(.system(size: min(16, screenWidth * 0.04), weight: .medium))
                
                // Сложность
                Text(difficulty)
                    .font(.system(size: min(14, screenWidth * 0.035)))
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(screenWidth * 0.03)
        .background(Color("whiteAsset"))
        .cornerRadius(12)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
