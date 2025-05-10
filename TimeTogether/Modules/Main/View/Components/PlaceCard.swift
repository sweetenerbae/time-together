import SwiftUI

struct PlaceCard: View {
    let imageName: String
    let title: String
    let subtitle: String
    let icon: String
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
