//
//  AppetizerListViewCell.swift
//  Appetizers
//
//  Created by VINH HOANG on 08/11/2021.
//

import SwiftUI

struct AppetizerListViewCell: View {
    
    let appetizer: Appetizer
   
    var body: some View {
        
        
        HStack {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)

          
            
            VStack(alignment: .leading) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .fontWeight(.semibold)
                Text("$"+String(appetizer.price))
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                
            }
            .padding(.leading, 10)
        }
        
    }
}

struct AppetizerListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListViewCell(appetizer: Mocdata.sampleAppetizer)
    }
}
