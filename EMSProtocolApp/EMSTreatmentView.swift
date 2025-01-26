//
//  EMSTreatmentView.swift
//  FireDeptExp
//
//  Created by Matthew Burrell on 12/27/24.
//

import SwiftUI

struct EMSTreatmentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    EMSTreatmentView()
}

struct GeneralProtocolsView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("General Patient Care and stuff")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct CardiacProtocolsView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Cardiac things")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct TraumaProtocolsView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Trauma lama")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct MedicalProtocolsView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Medical? More like medi-COOL")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct EnvironmentalProtocolsView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Environmentaly doo dah")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct OBProtocolsView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Ew, babies")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct PediatricProtocolsView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Ew, older babies")
                Text("Cardiac")
                
                Text("Other")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}
