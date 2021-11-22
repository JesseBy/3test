

import SwiftUI

//person view
struct PersonView: View {
    
    var body: some View {
        
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding()
            
            Text("Dmitrii Sedov")
                .font(.title)
                .bold()
            
            Spacer().frame(height: 30)
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack {
                    Image(systemName: "envelope")
                    Text("dspochta73@gmail.com")
                        .foregroundColor(.black)
                }
                
                HStack {
                    Image(systemName: "paperplane.fill")
                    Text("@amacoder")
                }
                
            }
            
            Spacer().frame(height: 20)
            
            Text("Это был мой первый опыт с json. Мне понравилось) хотя я не до конца понял задание.")
                .font(.body)
                .padding()
            
        }
        
    }
    
}
