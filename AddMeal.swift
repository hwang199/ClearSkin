import SwiftUI

struct AddMeals: View {
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

            // Meal Name text
            TextField("Meal Name", text: $mealName)
                .padding()

            // Fat Amount circle
            HStack {
                Circle()
                    .fill(Color.blue.opacity(0.5))
                    .frame(width: 15, height: 15) // Slightly larger size
                TextField("Fat (g)", text: $fatAmount)
            }
            .padding([.leading, .trailing, .bottom]) // Additional padding

            // Protein Amount Text & Circle
            HStack {
                Circle()
                    .fill(Color.blue.opacity(0.5))
                    .frame(width: 15, height: 15) // Slightly larger size
                TextField("Protein (g)", text: $proteinAmount)
            }
            .padding([.leading, .trailing, .bottom]) // Additional padding

            // Carbs Amount TextField with Circle
            HStack {
                Circle()
                    .fill(Color.blue.opacity(0.5))
                    .frame(width: 15, height: 15) // Slightly larger size
                TextField("Carbs (g)", text: $carbsAmount)
            }
            .padding([.leading, .trailing, .bottom]) // Additional padding

            Spacer()

            // Add Button 
            Button(action: {
                // Perform the action to add the meal 
            }) {
                Text("Add")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 30) // Longer width
                    .padding(.vertical, 15) // Adjusted height
                    .background(Color.blue)
                    .clipShape(Capsule()) // Capsule shape for cylindrical effect
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

struct AddMeals_Previews: PreviewProvider {
    static var previews: some View {
        AddMeals()
    }
}


