//
//  EMSProceduresView.swift
//  FireDeptExp
//
//  Created by Matthew Burrell on 12/27/24.
//

import SwiftUI

struct EMSProceduresView: View {
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                NavigationLink(destination: AirwayProceduresView()) {
                    Text("Airway / Breathing Procedures")
                }
                NavigationLink(destination: CirculationProceduresView()) {
                    Text("Circulation Procedures")
                }
                NavigationLink(destination: DiagnosticsProceduresView()) {
                    Text("Diagnostics / Determination Procedures")
                }
                NavigationLink(destination: OtherProceduresView()) {
                    Text("Other Procedures")
                }
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

#Preview {
    EMSProceduresView()
}

struct AirwayProceduresView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Breathing is good")
                // maybe include breathing procedures as well?
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct BreathingProceduresView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Breathing is still good")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct CirculationProceduresView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Curculating good vibes")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct DiagnosticsProceduresView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("10 wires, but 12 leads? Cool.")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

struct OtherProceduresView: View
{
    @State var selectedPDF: PDFItem? = nil
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Fun stuff.")
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}
