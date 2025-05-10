import SwiftUI

struct GameCard: View {
    let imageName: String
    let title: String
    let screenWidth: CGFloat
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.primaryPurple)
                
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: screenWidth * 0.25, height: screenWidth * 0.25)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .frame(width: screenWidth * 0.25, height: screenWidth * 0.25)
            
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
