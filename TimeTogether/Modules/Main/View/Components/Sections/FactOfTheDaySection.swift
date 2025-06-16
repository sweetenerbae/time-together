import SwiftUI

struct FactOfTheDaySection: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image("fact_of_the_day")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 85)
                .clipShape(RoundedRectangle(cornerRadius: 9))
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(Color.primaryPurple, lineWidth: 6)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(Color("whiteAsset"), lineWidth: 2)
                )

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
        }
        .padding(20)
        .frame(maxWidth: .infinity) // 💡 важно: растягиваем карточку
        .background(Color.backgroundGray)
        .cornerRadius(16)
        .padding(.horizontal, 20)
    }
}

#Preview {
    FactOfTheDaySection()
}
