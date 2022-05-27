    //
    //  DetailContactView.swift
    //  ContactList
    //
    //  Created by Konstantin Fomenkov on 27.05.2022.
    //

import SwiftUI

struct DetailContactView: View {
    
    let contact: Person
    
    var body: some View {
        
        List {
            HStack {
                Spacer()
                ImageCellView(image: contact.image)
                Spacer()
            }
            TextCellView(image: .phone, text: contact.phoneNumber)
            TextCellView(image: .email, text: contact.email)
        }
        .navigationTitle(contact.fullName)
    }
}

struct DetailContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactView(contact: Person(name: "Aaron", surname: "Johnson", email: "stop@mail.com", phoneNumber: "799998888333"))
    }
}
