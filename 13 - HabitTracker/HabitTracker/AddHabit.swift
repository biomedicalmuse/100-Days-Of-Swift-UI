//
//  AddHabit.swift
//  HabitTracker
//
//  Created by Natasha Godwin on 6/13/20.
//  Copyright © 2020 Natasha Godwin. All rights reserved.
//

import SwiftUI

struct AddHabit: View {
    @State private var name = ""
    @State private var category = ""
    @State private var unit = "Count"
    @State private var goal = ""
    
    static let units = ["Count", "Minutes"]
    
    @ObservedObject var habits: Habits
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Habit", text: $name)
                TextField("Category", text: $category)
                Picker("Unit", selection: $unit) {
                    ForEach(Self.units, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Goal", text: $goal)
                    .keyboardType(.numberPad)
            }
        .navigationBarTitle("Create New Habit")
            .navigationBarItems(trailing: Button("Save") {
                self.addHabit()
                self.presentationMode.wrappedValue.dismiss()
            })
        }
    }
    
    func addHabit() {
        let habit = Habit(name: name, category: category, unit: unit, goal: goal)
        habits.items.append(habit)
    }
}

struct AddHabit_Previews: PreviewProvider {
    static var previews: some View {
        AddHabit(habits: Habits())
    }
}
