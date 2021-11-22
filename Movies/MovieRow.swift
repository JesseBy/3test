
import SwiftUI

struct MovieRow: View {
    var movie: Movie

    var body: some View {
        HStack {
            Text(movie.name)
        }
    }
}
