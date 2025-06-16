import SwiftUI

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
