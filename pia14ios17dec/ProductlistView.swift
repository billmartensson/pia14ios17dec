//
//  ProductlistView.swift
//  pia14ios17dec
//
//  Created by BillU on 2025-12-17.
//

import SwiftUI

struct ProductlistView: View {
    
    func notifPerm() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                print("All set!")
            } else if let error {
                print(error.localizedDescription)
            }
        }
    }
    
    func donotification() async {
        let content = UNMutableNotificationContent()
        content.title = "PIA14 notis"
        content.body = "Detta är texten"
        
        
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current

        var now = Date.now
        
        dateComponents.hour = 13
        dateComponents.minute = 13

        // Create the trigger as a repeating event.
        let trigger = UNCalendarNotificationTrigger(
                 dateMatching: dateComponents, repeats: false)
        
        
        let trigger2 = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger2)


        // Schedule the request with the system.
        let notificationCenter = UNUserNotificationCenter.current()
        do {
            try await notificationCenter.add(request)
        } catch {
            // Handle errors that may occur during add.
            print("ERROR REG NOTIF")
        }
        
    }
    
    
    var body: some View {
        
        NavigationStack {
            VStack {
                NavigationLink(destination: ProductDetailView()) {
                    Text("Go to Product View")
                }
                
                List {
                    Text("Product A")
                    Text("Product B")
                    Text("Product C")
                }
                
                Button("NOTIF PERM") {
                    notifPerm()
                }

                Button("NOTIF") {
                    Task {
                        await donotification()
                    }
                }

            }
        }
    }
}

#Preview {
    ProductlistView()
}
