    //
    //  FullContactsListView.swift
    //  ContactList
    //
    //  Created by Konstantin Fomenkov on 27.05.2022.
    //

import SwiftUI

struct FullContactsListView: View {
    
    let contactList: [Person]
    
    var body: some View {
        
        NavigationView {
            List(contactList, id: \.fullName) { person in
                Section(header: Text(person.fullName).font(.title3)) {
                    Label(person.phoneNumber, systemImage: Contacts.phone.rawValue)
                    Label(person.email, systemImage: Contacts.email.rawValue)
                }.textCase(.none)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Detail List")
        }
    }
}

struct FullContactsList_Previews: PreviewProvider {
    static var previews: some View {
        FullContactsListView(contactList: Person.getContactList())
    }
}
