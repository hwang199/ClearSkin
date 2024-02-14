import SwiftUI

@main
struct DietTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var caloriesConsumed = 0
    @State private var fatConsumed = 0
    @State private var proteinConsumed = 0
    @State private var carbsConsumed = 0
    @State private var meals: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                Text("Diet Tracker")
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: AddMealView(addMeal: addMeal)) {
                    VStack {
                        Text("Calories Consumed:")
                            .font(.headline)
                        Text("\(caloriesConsumed)")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                }

                HStack {
                    VStack {
                        Text("Fat Consumed:")
                            .font(.headline)
                        Text("\(fatConsumed) g")
                    }
                    .padding()

                    VStack {
                        Text("Protein Consumed:")
                            .font(.headline)
                        Text("\(proteinConsumed) g")
                    }
                    .padding()

                    VStack {
                        Text("Carbs Consumed:")
                            .font(.headline)
                        Text("\(carbsConsumed) g")
                    }
                    .padding()
                }

                Spacer()
            }
            .navigationTitle("Diet Tracker")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            addMeal()
        }
    }

    func addMeal() {
        // Simulating adding a meal
        let mealCalories = Int.random(in: 100...500)
        let mealFat = Int.random(in: 5...30)
        let mealProtein = Int.random(in: 5...30)
        let mealCarbs = Int.random(in: 5...50)

        caloriesConsumed += mealCalories
        fatConsumed += mealFat
        proteinConsumed += mealProtein
        carbsConsumed += mealCarbs

        meals.append("Meal \(meals.count + 1)")
    }
}

struct AddMealView: View {
    var addMeal: () -> Void

    var body: some View {
        NavigationLink(destination: AddMealDetailView()) {
            VStack {
                Text("Add Meal")
                    .font(.largeTitle)
                    .padding()

                Text("Add Meal")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)

                Spacer()
            }
        }
    }
}

struct AddMealDetailView: View {
    @State private var mealName = ""
    @State private var fatAmount = ""
    @State private var proteinAmount = ""
    @State private var carbsAmount = ""

    var body: some View {
        VStack {
            Text("Add Meal")
                .font(.largeTitle)
                .padding()

            TextField("Meal Name", text: $mealName)
                .padding()

            TextField("Fat (g)", text: $fatAmount)
                .padding()

            TextField("Protein (g)", text: $proteinAmount)
                .padding()

            TextField("Carbs (g)", text: $carbsAmount)
                .padding()

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

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


