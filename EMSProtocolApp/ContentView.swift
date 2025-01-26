//
//  ContentView.swift
//  EMSProtocolApp
//
//  Created by Matthew Burrell on 1/25/25.
//


import SwiftUI
import UIKit
import PDFKit

struct ContentView: View {
    @State private var showMedications = false
    @State var weight = " "
    
    // This defines the body
    var body: some View {
        VStack{
            NavigationStack
            {
                NavigationLink(destination: MedicationPDFsView()) {
                    Text("Medications")
                }
                NavigationLink(destination: EMSProtocolsView()) {
                    Text("EMS Protocols")
                }
                NavigationLink(destination: DrugCalculationsView()) {
                    Text("Drug Calculations")
                }
                
                .navigationTitle("Table of Contents")
            }
        }
            
                .padding()
        }
    }

    
    #Preview {
        ContentView()
    }

struct PDFKitView: UIViewRepresentable
{
    var url: URL
    func makeUIView(context: Context) -> PDFView
    {
        let pdfView = PDFView()
        if let document = PDFDocument(url: url)
        {
            pdfView.document = document
        }
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context)
    {
        if let document = PDFDocument(url: url)
        {
            uiView.document = document
        }
    }
}
