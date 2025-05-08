import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String

    var body: some View {
        HStack {
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(hex: "828282"))
                
                TextField("Быстро найдём желаемое", text: $searchText)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 12)
            .background(Color.backgroundGray)
            .cornerRadius(8)
            
            Button(action: {}){
                Image("bell")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .foregroundColor(.labelBlack)
                    .padding(12)
                    .background(Color.backgroundGray)
                    .cornerRadius(8)
            }
        }
    }
}
