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
                    // Title
                    HStack(alignment: .firstTextBaseline, spacing: 0) {
                        Text("Место, где семья становится ")
                            .font(.system(size: 32, weight: .bold))
                        
                        Text("ближе")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.primaryPurple)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    // Факт дня
                    HStack(spacing: 16) {
                        // Изображение кошек
                        Image("fact_of_the_day")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 85)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.purple, lineWidth: 2)
                            )
                        
                        // Факт дня текст
                        VStack(alignment: .leading, spacing: 8) {
                            HStack(spacing: 8) {
                                Image(systemName: "lightbulb.fill")
                                    .foregroundColor(.primaryPurple)
                                    .font(.system(size: 20))
                                
                                Text("Факт дня")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            
                            Text("Объятия защищают сердце от болезней")
                                .font(.system(size: 16))
                        }
                        
                        Spacer()
                    }
                    .padding(16)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
                    .padding(.horizontal, 20)
                    
                    // Ежедневное задание
                    VStack(alignment: .leading, spacing: 4) {
                        Text("12 баллов")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.primaryPurple)
                        HStack() {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Ежедневное задание")
                                    .font(.system(size: 20, weight: .bold))
                                
                                Text("Испеките шоколадные печенья")
                                    .font(.system(size: 16))
                            }
                            VStack(alignment: .trailing, spacing: 0) {
                                Text("🍪")
                                    .font(.system(size: 51))
                            }
                        }
                        
                        HStack {
                            Button(action: {
                            }) {
                                HStack {
                                    Text("Подробнее")
                                        .font(.system(size: 16, weight: .regular))
                                        .foregroundStyle(Color.labelBlack)
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundStyle(Color.labelBlack)
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .frame(maxWidth: .infinity)
                                .background(Color("whiteAsset"))
                                .cornerRadius(12)
                            }
                            
                            
                            // Иконка времени
                            ZStack {
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color("whiteAsset"))
                                    .frame(width: 44, height: 44)
                                
                                Image(systemName: "clock")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding(20)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
                    .padding(.horizontal, 20)
                    
                    // Семейные челенджи
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Семейные челенджи")
                            .font(.system(size: 24, weight: .bold))
                        
                        // Иллюстрации
                        HStack(spacing: 12) {
                            // Левая иллюстрация
                            Image("challenge_left")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity)
                            
                            // Правая иллюстрация
                            Image("challenge_right")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity)
                        }
                        .padding(.vertical, 10)
                        
                        // Кнопка создать челлендж
                        Button(action: {
                            // Действие для кнопки "Создать челлендж"
                        }) {
                            Text("Создать челлендж")
                                .font(.system(size: 16, weight: .medium))
                                .padding(.vertical, 16)
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(12)
                        }
                    }
                    .padding(20)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
                    .padding(.horizontal, 20)
                    
                    Spacer(minLength: 40)
                }
            }
        }
        .background(Color("whiteAsset"))
        .hideKeyboardOnTap()
    }
}

#Preview {
    MainView()
}
