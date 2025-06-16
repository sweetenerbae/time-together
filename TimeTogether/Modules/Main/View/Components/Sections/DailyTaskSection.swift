import SwiftUI

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

