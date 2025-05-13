import SwiftUI

struct OnboardingPointsView: View {
    let onNext: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .center) {
                Image("PointsPng")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 40)
                
                // MARK: - Title & Description
                VStack(alignment: .leading, spacing: 8) {
                    Text("Зарабатывай очки")
                        .font(.system(size: 28, weight: .bold))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.labelBlack)
                    
                    Text("Выполняя ежедневные задания и проявляя активность вы будете получать баллы за который будет формироваться рейтинг вашей семьи")
                        .font(.system(size: 18, weight: .regular))
                        .foregroundStyle(Color.labelBlack)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            }
            .padding(.bottom, 30)
            .padding(.top, 40)

            Spacer()
            
            // MARK: - Next Button
            ActionButton(title: "Далее",
                                   action: onNext,
                                   backgroundColor: Color.primaryPurple,
                                   foregroundColor: Color("whiteAsset"))
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
        }
        .background(Color("whiteAsset"))
    }
}

#Preview {
    OnboardingPointsView(onNext: {})
}
