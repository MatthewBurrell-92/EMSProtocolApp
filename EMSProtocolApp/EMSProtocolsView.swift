//
//  EMSProtocolView.swift
//  FireDeptExp
//
//  Created by Matthew Burrell on 12/27/24.
//

import SwiftUI

struct EMSProtocolsView: View {
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack 
            {
                Button(action: {
                    if let pdfPath = Bundle.main.path(forResource: "EMSProtocols", ofType: "pdf")
                    {
                        selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                    }
                })
                {
                    Text("All EMS Protocols")
                }
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

#Preview {
    EMSProtocolsView()
}
