import SwiftUI

struct QuizCard: View {
    let imageName: String
    let title: String
    let difficulty: String
    let screenWidth: CGFloat
    
    var body: some View {
        HStack(spacing: screenWidth * 0.03) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: screenWidth * 0.25, height: screenWidth * 0.15)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: min(16, screenWidth * 0.04), weight: .medium))
                
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
