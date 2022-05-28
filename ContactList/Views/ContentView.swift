    //
    //  ContentView.swift
    //  ContactList
    //
    //  Created by Konstantin Fomenkov on 27.05.2022.
    //

import SwiftUI

struct ContentView: View {
    
    private let contactsList = Person.getContactList()
    
    var body: some View {
        

            TabView {
                ShortContactsListView(contactList: contactsList)
                    .tabItem {
                        Image(systemName: "person.2.circle")
                        Text("Contacts")
                    }
                FullContactsListView(contactList: contactsList)
                    .tabItem {
                        Image(systemName: "phone.circle")
                        Text("Numbers")
                    }
            }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
