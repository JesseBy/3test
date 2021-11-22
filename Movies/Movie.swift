
import Foundation
import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var detailLink: String
    var posterLink: String
}
