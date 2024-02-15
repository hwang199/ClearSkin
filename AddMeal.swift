import SwiftUI

struct AddMealDetailView: View {
    @State private var mealName = ""
    @State private var fatAmount = ""
    @State private var proteinAmount = ""
    @State private var carbsAmount = ""
    @State private var searchText = ""

    var body: some View {
        VStack {
            Text("Add Meal")
                .font(.largeTitle)
                .padding()

            // Search Bar
            TextField("Search", text: $searchText)
                .padding()

            Spacer()

            // Meal Name TextField
            TextField("Meal Name", text: $mealName)
                .padding()

            // Fat Amount TextField with Circle
            HStack {
                Circle()
                    .fill(Color.blue.opacity(0.5))
                    .frame(width: 10, height: 10)
                TextField("Fat (g)", text: $fatAmount)
            }
            .padding()

            // Protein Amount TextField with Circle
            HStack {
                Circle()
                    .fill(Color.blue.opacity(0.5))
                    .frame(width: 10, height: 10)
                TextField("Protein (g)", text: $proteinAmount)
            }
            .padding()

            // Carbs Amount TextField with Circle
            HStack {
                Circle()
                    .fill(Color.blue.opacity(0.5))
                    .frame(width: 10, height: 10)
                TextField("Carbs (g)", text: $carbsAmount)
            }
            .padding()

            Spacer()

            // Add Button
            Button(action: {
                // Perform the action to add the meal with the provided details
            }) {
                Text("Add")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddMealDetailView()
    }
}



