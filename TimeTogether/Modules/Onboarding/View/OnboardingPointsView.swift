import SwiftUI

struct OnboardingPointsView: View {
    let onNext: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            OnboardingPageIndicator(totalPages: 4, currentPage: 1)
            
            Spacer()
            
            Image("PointsPng")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .frame(maxWidth: .infinity)
                .padding()
                .padding(.bottom, 40)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Зарабатывай очки")
                    .font(.system(size: 28, weight: .bold))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.labelBlack)
                
                Text("Выполняя ежедневные задания и проявляя активность вы будете получать баллы за который будет формироваться рейтинг вашей семьи")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(Color.labelBlack)
            }
//            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            Spacer()
            
            OnboardingActionButton(title: "Далее", action: onNext, backgroundColor: Color.primaryPurple, foregroundColor: Color.white)
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingPointsView(onNext: {} )
}
