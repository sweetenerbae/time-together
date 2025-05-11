import SwiftUI

struct FamilyRankRow: View {
    let family: Family
    
    var body: some View {
        HStack {
            // Номер ранга
            Text("\(family.rank)")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(family.rankColor)
                .frame(width: 30, alignment: .leading)
            
            // Название семьи
            Text(family.name)
                .font(.system(size: 16, weight: .medium))
            
            Spacer()
            
            // Количество баллов
            Text(family.points)
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.blue)
            
            Button(action: {
            }) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Circle().fill(Color.blue))
            }
            .padding(.leading, 8)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 14)
        .background(family.backgroundColor)
        .cornerRadius(16)
    }
}
