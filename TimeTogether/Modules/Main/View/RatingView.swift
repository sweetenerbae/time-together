import SwiftUI

struct RatingView: View {
    // Состояние для сегментированного переключателя
    @State private var selectedTab: Int = 0
    
    // Данные о семьях
    let families = [
        Family(id: 1, name: "Семья Рамазановых", points: "133kk", rank: 1),
        Family(id: 2, name: "Семья Расуловых", points: "113kk", rank: 2),
        Family(id: 3, name: "Семья Курбановых", points: "112kk", rank: 3),
        Family(id: 4, name: "Семья Алиевых", points: "100kk", rank: 4),
        Family(id: 5, name: "Семья Магомедовых", points: "99kk", rank: 5),
        Family(id: 6, name: "Семья Гаджиевых", points: "95kk", rank: 6),
        Family(id: 7, name: "Семья Сулеймановых", points: "92kk", rank: 7)
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                HStack {
                    Button(action: {
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.black)
                            .frame(width: 44, height: 44)
                            .background(Color.backgroundGray)
                            .cornerRadius(12)
                    }
                    
                    Spacer()
                    
                    Text("Рейтинг семей")
                        .font(.system(size: 18, weight: .semibold))
                    
                    Spacer()
                    
                    Button(action: {
                        // Действие для кнопки "Уведомления"
                    }) {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.black)
                            .frame(width: 44, height: 44)
                            .background(Color.backgroundGray)
                            .cornerRadius(12)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color("whiteAsset"))
                
                // Основной контент
                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        // Заголовок
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Рейтинг самых")
                                .font(.system(size: 32, weight: .bold))
                            
                            Text("самых")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundColor(.primaryPurple)
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                        
                        // Сегментированный переключатель
                        HStack(spacing: 0) {
                            Button(action: {
                                selectedTab = 0
                            }) {
                                Text("Все семьи")
                                    .font(.system(size: 16, weight: selectedTab == 0 ? .semibold : .regular))
                                    .foregroundColor(selectedTab == 0 ? .labelBlack : .gray)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .background(selectedTab == 0 ? Color("whiteAsset") : Color.clear)
                                    .cornerRadius(12)
                            }
                            
                            Button(action: {
                                selectedTab = 1
                            }) {
                                Text("Моя семья")
                                    .font(.system(size: 16, weight: selectedTab == 1 ? .semibold : .regular))
                                    .foregroundColor(selectedTab == 1 ? .labelBlack : .gray)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .background(selectedTab == 1 ? Color("whiteAsset") : Color.clear)
                                    .cornerRadius(12)
                            }
                        }
                        .padding(4)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.horizontal, 20)
                        
                        // Список семей
                        VStack(spacing: 12) {
                            ForEach(families) { family in
                                FamilyRankRow(family: family)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    }
                }
                .background(Color.gray.opacity(0.05))
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
