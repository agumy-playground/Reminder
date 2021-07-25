//
//  ReminderListView.swift
//  Remindeer
//
//  Created by Rudrank Riyam on 16/03/21.
//

import SwiftUI

struct ReminderListView: View {
    @EnvironmentObject var viewModel: RemindersViewModel

    var category: ReminderCategory

    var body: some View {
        ForEach(category.reminders, id: \.id) { reminder in
            ReminderCardView(reminder: reminder) {
                viewModel.toggleReminder(for: category, reminder: reminder)
            }
        }
    }
}
