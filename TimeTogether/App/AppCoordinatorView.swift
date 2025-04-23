import SwiftUI

struct AppCoordinatorView: View {
    
    // MARK: - Dependencies

    private let coordinator = AppCoordinator()
    
    // MARK: - Body

    var body: some View {
        coordinator.start()
    }
}

#Preview {
    AppCoordinatorView()
}
