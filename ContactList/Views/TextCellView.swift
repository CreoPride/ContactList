    //
    //  TextCellView.swift
    //  ContactList
    //
    //  Created by Konstantin Fomenkov on 27.05.2022.
    //

import SwiftUI

struct TextCellView: View {
    
    let image: Contacts
    let text: String
    
    var body: some View {
        
        HStack {
            Image(systemName: image.rawValue)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        TextCellView(image: .email, text: "99999999")
    }
}
