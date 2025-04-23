import Foundation

struct UserModel: Codable, Identifiable {
    var id = UUID()
    var email: String
    var firstName: String
    var lastName: String
    var middleName: String
}
