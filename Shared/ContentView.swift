import SwiftUI

struct ContentView: View {
    
    @State var counter = 0.0 // must change counter to 0.0 to make it a double
    
    var body: some View {
        VStack {
            Text("Flag Raising")
                .font(.system(size: 25))
                .bold()
            Text("\(counter)")
            
            HStack(alignment: .bottom, spacing: -10) { // putting the flag at the bottom
                Rectangle() // one of the things which take out as much space that they can
                    .frame(width: 10) // same height, we just reduced the width
                Text("🇸🇬")
                    .font(.system(size: 100))
                    .offset(y: -30 * counter)
            }
            
            Button {
                withAnimation {
                counter = counter + 1
                    if counter == 15.0 {
                        counter = 14.0
                    }
                }
            } label: {
                Text("Raise flag")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button {
                withAnimation {
                counter = 0
                }
            } label: {
                Text("Lower flag")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

