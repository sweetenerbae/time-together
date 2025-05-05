import SwiftUI

struct OnboardingInterestSelectionView: View {
    @State var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 8) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
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
                        .frame(width: 24, height: 24)
                        .foregroundColor(.labelBlack)
                        .padding(12)
                        .background(Color.backgroundGray)
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}


#Preview {
    OnboardingInterestSelectionView(searchText: "")
}
