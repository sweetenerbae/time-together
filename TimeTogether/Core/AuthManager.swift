//import SwiftUI
//import Combine
//
//class AuthManager: ObservableObject {
//    @Published var isLoggedIn: Bool = false
//    // @Published var currentUser: User?
//    
//    init() {
//        checkAuthState()
//    }
//    
//    func login() {
//        isLoggedIn = true
//        UserDefaults.standard.set(true, forKey: "isLoggedIn")
//    }
//    
//    func logout() {
//        isLoggedIn = false
//        currentUser = nil
//        UserDefaults.standard.set(false, forKey: "isLoggedIn")
//    }
//    
//    private func checkAuthState() {
//        isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
//    }
//}
