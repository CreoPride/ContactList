    //
    //  DetailContactView.swift
    //  ContactList
    //
    //  Created by Konstantin Fomenkov on 27.05.2022.
    //

import SwiftUI

struct DetailContactView: View {
    
    let person: Person
    
    var body: some View {
        
        List {
            HStack {
                Spacer()
                Image(systemName: person.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            Label(person.phoneNumber, systemImage: Contacts.phone.rawValue)
            Label(person.email, systemImage: Contacts.email.rawValue)
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactView(person: Person.getContactList().first!)
    }
}
