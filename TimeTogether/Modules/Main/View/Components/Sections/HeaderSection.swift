import SwiftUI

struct HeaderSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Место, где семья")
                .font(.system(size: 28, weight: .bold))

            HStack(spacing: 0) {
                Text("становится ")
                    .font(.system(size: 28, weight: .bold))

                Text("ближе")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.primaryPurple)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}
