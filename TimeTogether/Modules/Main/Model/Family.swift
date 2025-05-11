import SwiftUI

struct Family: Identifiable { // Временно. Переместить логику во ViewModel
    let id: Int
    let name: String
    let points: String
    let rank: Int
    
    // Возвращает цвет фона в зависимости от ранга
    var backgroundColor: Color {
        switch rank {
        case 1:
            return Color.yellow.opacity(0.2)
        case 2:
            return Color.blue.opacity(0.1)
        case 3:
            return Color.purple.opacity(0.1)
        default:
            return Color.gray.opacity(0.05)
        }
    }
    
    // Возвращает цвет текста ранга в зависимости от ранга
    var rankColor: Color {
        switch rank {
        case 1:
            return Color.orange
        case 2:
            return Color.blue
        case 3:
            return Color.purple
        default:
            return Color.black
        }
    }
}
