import SwiftUI

struct InterestCell: View {
    let name: String
    let imageName: String
    let isSelected: Bool
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.gray.opacity(0.1))
                
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                    )
            }
            .frame(width: 100, height: 100)
            
            Text(name)
                .font(.caption)
                .foregroundColor(isSelected ?  .primaryPurple : .gray)
                .fontWeight(isSelected ? .bold : .medium)
        }
    }
}
