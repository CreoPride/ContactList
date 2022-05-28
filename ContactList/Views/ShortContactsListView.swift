    //
    //  ShortContactsListView.swift
    //  ContactList
    //
    //  Created by Konstantin Fomenkov on 27.05.2022.
    //

import SwiftUI

struct ShortContactsListView: View {
    
    let contactList: [Person]
    
    var body: some View {
        
        NavigationView {
            List(contactList, id: \.fullName) { person in
                NavigationLink(destination: DetailContactView(contact: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ShortContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ShortContactsListView(contactList: Person.getContactList())
    }
}
