
import SwiftUI

struct MoviesList: View {
    
    //showing the sheet:
    @State var showPersonInfo = false
    
    var body: some View {
        NavigationView {
            List(movies) { movie in
                NavigationLink {
                    MovieDetails(movie: movie, data: JSONData.init(original_title: "loading..", overview: "loading.."))
                    //movieData
                } label: {
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Movies")
            //person button
            .navigationBarItems(trailing:
                                    
                Button(action: {
                
                showPersonInfo = true
                
                
            }, label: {
                Image(systemName: "person.circle")
            }
                                           
            ))
            .sheet(isPresented: $showPersonInfo) {
                PersonView()
            }
        }
    }
}

