import SwiftUI

struct HomeScreenExample: View {
    @State var index = 0
    
    var body: some View {
        VStack(spacing: 0) {
            // Display content based on selected tab
            Group {
                switch index {
                case 0:
                    HomeScreenView() // Replace with actual home content view
                case 1:
                    Text("Categories")
                case 2:
                    Text("Cart")
                case 3:
                    Text("Conversations")
                case 4:
                    Text("Knowledge")
                default:
                    Text("Default")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            
            // Custom Tab Bar
            TabBar(index: $index)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabBarExample: View {
    @Binding var index: Int
    
    var body: some View {
        VStack {
            Divider()
            HStack(spacing: 0) {
                TabBarButtonExample(index: $index, buttonIndex: 0, systemImage: "storefront.fill", title: "Mall")
                Spacer(minLength: 0)
                TabBarButtonExample(index: $index, buttonIndex: 1, systemImage: "square.grid.2x2.fill", title: "Categories")
                Spacer(minLength: 0)
                TabBarButtonExample(index: $index, buttonIndex: 2, systemImage: "cart.circle.fill", title: "", isCircle: true)
                Spacer(minLength: 0)
                TabBarButtonExample(index: $index, buttonIndex: 3, systemImage: "person.3.fill", title: "Conv...")
                Spacer(minLength: 0)
                TabBarButtonExample(index: $index, buttonIndex: 4, systemImage: "lightbulb.fill", title: "Know...")
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : 0)
        }
    }
}

struct TabBarButtonExample: View {
    @Binding var index: Int
    let buttonIndex: Int
    let systemImage: String
    let title: String
    var isCircle: Bool = false
    
    var body: some View {
        Button(action: {
            self.index = buttonIndex
        }) {
            VStack {
                if isCircle {
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 70, height: 70)
                        Image(systemName: systemImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color(.systemYellow))
                    }
                    .offset(y: -25)
                } else {
                    Image(systemName: systemImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(self.index == buttonIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                    Text(title)
                        .font(.system(size: 14))
                        .foregroundColor(self.index == buttonIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                }
            }
        }
    }
}

struct HomeContentView: View {
    var body: some View {
        VStack {
            Text("Home Content")
                .font(.largeTitle)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// Preview
struct HomeScreenExample_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenExample()
    }
}

