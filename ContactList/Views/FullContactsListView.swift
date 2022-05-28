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
                Section(person.fullName) {
                    TextCellView(image: .phone, text: person.phoneNumber)
                    TextCellView(image: .email, text: person.email)
                }
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
