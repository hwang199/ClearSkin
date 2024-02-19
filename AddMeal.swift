import SwiftUI

struct AddMeals: View {
    @State private var mealName = ""
    @State private var fatAmount = ""
    @State private var proteinAmount = ""
    @State private var carbsAmount = ""
    @State private var caloriesAmount = "" // New state variable for calories
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
            NutrientInputView(nutrientName: "Fat", nutrientAmount: $fatAmount)

            // Protein Amount circle
            NutrientInputView(nutrientName: "Protein", nutrientAmount: $proteinAmount)

            // Carbs Amount circle
            NutrientInputView(nutrientName: "Carbs", nutrientAmount: $carbsAmount)

            // Calories Amount circle
            NutrientInputView(nutrientName: "Calories", nutrientAmount: $caloriesAmount)

            Spacer()

            // Add Button
            Button(action: {
                // Perform the action to add the meal
            }) {
                Text("Add")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20) // Adjusted width
                    .padding(.vertical, 10) // Adjusted height
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

struct NutrientInputView: View {
    let nutrientName: String
    @Binding var nutrientAmount: String

    var body: some View {
        HStack {
            Circle()
                .fill(Color.blue.opacity(0.5))
                .frame(width: 15, height: 15) // Slightly larger size
            TextField("\(nutrientName) (g)", text: $nutrientAmount)
        }
        .padding([.leading, .trailing, .bottom]) // Additional padding
    }
}

struct AddMeals_Previews: PreviewProvider {
    static var previews: some View {
        AddMeals()
    }
}

