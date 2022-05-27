    //
    //  ImageCellView.swift
    //  ContactList
    //
    //  Created by Konstantin Fomenkov on 27.05.2022.
    //

import SwiftUI

struct ImageCellView: View {

    let image: String

    var body: some View {
        
        Image(systemName: image)
            .resizable()
            .frame(width: 100, height: 100)
    }
}

struct ImageCellView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCellView(image: "person.fill")
    }
}
