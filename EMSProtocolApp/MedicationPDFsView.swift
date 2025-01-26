//
//  MedicationPDFsView.swift
//  FireDeptExp
//
//  Created by Matthew Burrell on 12/24/24.
//

import SwiftUI
import PDFKit

struct MedicationPDFsView: View {
    @State var selectedPDF: PDFItem? = nil
//    @State var title = "Medications"
    var body: some View {
        NavigationView
        {
            ScrollView
            {
                VStack
                {
                    //                Button(action: {showKetaminePDF.toggle()}) {Text("Ketamine")}
                    //                    .sheet(isPresented: $showKetaminePDF)
                    //                {
                    //                    if let pdfPath = Bundle.main.path(forResource: "ketamine", ofType: "pdf")
                    //                    {
                    //                        let pdfURL = URL(fileURLWithPath: pdfPath)
                    //                        PDFKitView(url: pdfURL)
                    //                    }
                    //                }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "adenosine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Adenosine")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "albuterol", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Albuterol (Proventil, Ventolin)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "amiodarone", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Amiodarone (Cordorone)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "aspirin", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Aspirin")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "atropine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Atropine")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "calcium", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Calcium Chloride / Calcium Gluconate")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "cefazolin", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Cefazolin (Ancef)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "d10", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Dextrose D10")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "dexamethasone", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Dexamethasone (Decadron)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "diltiazem", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Diltiazen (Cardizem)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "diphenhydramine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Diphenhydramine (Benadryl)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "epinephrine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Epinephrine (Adrenaline)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "etomidate", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Etomidate (Amidate)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "fentanyl", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Fentanyl (Sublimaze)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "glucose", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Glucose (Glutose)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "hydromorphone", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Hydromorphone (Dilaudid)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "atrovent", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Ipratropium Bromide (Atrovent)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "ketamine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Ketamine")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "toradol", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Ketorolac (Toradol)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "labetalol", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Labetalol")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "ativan", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Lorazepam (Ativan)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "magnesiumSulfate", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Magnesium Sulfate")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "methylprednisolone", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Methylprednisolone (Solu-Medrol)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "midazolam", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Midazolam (Versed)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "morphine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Morphine")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "narcan", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Naloxone (Narcan)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "nicardipine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Nicardipine (Cardene)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "nitroglycerin", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Nitroglycerin (Nitrostat)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "norepinephrine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Norepinephrine (Levophed)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "zofran", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Ondansetron (Zofran)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "oxytocin", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Oxytocin (Pitocin)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "phenylephrine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Phenylephrine")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "promethazine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Promethazine (Phenergan)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "rocuronium", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Rocuronium (Zemuron)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "sodiumBicarbonate", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Sodium Bicarbonate 8.4%")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "succinylcholine", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Succinylcholine (Anectine)")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "tranexamicAcid", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Tranexamic Acid")
                    }
                    
                    Button(action: {
                        if let pdfPath = Bundle.main.path(forResource: "vecuronium", ofType: "pdf")
                        {
                            selectedPDF = PDFItem(url: URL(fileURLWithPath: pdfPath))
                        }
                    })
                    {
                        Text("Vecuronium (Norcuron)")
                    }
                }
            }
            .sheet(item: $selectedPDF) { pdfItem in
                PDFKitView(url: pdfItem.url)}
        }
    }
}

#Preview {
    MedicationPDFsView()
}

struct PDFItem: Identifiable
{
    var id: UUID = UUID()
    var url: URL
}

//    @State private var showDetails = false
//    @State private var showKetaminePDF = false
//    @State private var showPhenylephrinePDF = false
//    @State private var showMorphinePDF = false

//                Button(action: {showPhenylephrinePDF.toggle()}) {Text("Phenylephrine")}
//                    .sheet(isPresented: $showPhenylephrinePDF)
//                {
//                    if let pdfPathPhenyl = Bundle.main.path(forResource: "phenylephrine", ofType: "pdf")
//                    {
//                        let pdfURLPhenyl = URL(fileURLWithPath: pdfPathPhenyl)
//                        PDFKitView(url: pdfURLPhenyl)
//                    }
//                }

//                Button(action: {showMorphinePDF.toggle()}) {Text("Morphine")}
//                    .sheet(isPresented: $showMorphinePDF)
//                {
//                    if let pdfPathMorph = Bundle.main.path(forResource: "morphine", ofType: "pdf")
//                    {
//                        let pdfURLMorph = URL(fileURLWithPath: pdfPathMorph)
//                        PDFKitView(url: pdfURLMorph)
//                    }
//                }
