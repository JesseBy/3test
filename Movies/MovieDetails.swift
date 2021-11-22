
import SwiftUI

//detail view
struct MovieDetails: View {
    
    var movie: Movie
    @State var data: JSONData
    
    
    var body: some View {
        
        
        //displaying details
        ScrollView {
            VStack {
                
                AsyncImage(url: URL(string: movie.posterLink))
                    .frame(width: 200, height: 300)
                    .clipShape(Rectangle())
                    .shadow(radius: 10)
                
                Text(data.original_title)
                    .fontWeight(.bold)
                    .padding()
                
                Text(data.overview)
                    .padding()
                
            }
            .navigationTitle("details")
            .onAppear {
                
                //loading movie data
                getUserData(url: movie.detailLink)
                
            }
        }
        
    }
        

    //get data
    func getUserData(url: String) {
        
        guard let url = URL(string: url) else { return }
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            if let decodedData = try?
                JSONDecoder().decode(JSONData.self, from: data) {
                DispatchQueue.main.async{
                    self.data = decodedData
                }
            }
        }.resume()
    }
    
}


