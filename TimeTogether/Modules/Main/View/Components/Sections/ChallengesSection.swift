import SwiftUI

struct ChallengesSection: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Семейные челленджи")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)

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

#Preview {
    ChallengesSection()
}
