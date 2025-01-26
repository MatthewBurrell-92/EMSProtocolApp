//
//  DrugCalculationsView.swift
//  FireDeptExp
//
//  Created by Matthew Burrell on 12/27/24.
//

import SwiftUI

struct DrugCalculationsView: View {
    @State var weight: Double?
    @State private var age: Int?
    @State private var months: Int?
    @State private var rsi = false           // for RSI information
    @State private var adultPatient = false  // for buttons
    @State private var pediPatient = false   // will display age and KG prompts
    @State private var infantPatient = false // will display months and KG
    var body: some View {
        ScrollView // Scroll to help see contents past keyboard
        {
            VStack // VPrimary
            {
                HStack
                {
                    Button(action:
                            {
                        adultPatient = true
                        pediPatient = false
                        infantPatient = false
                    }, label: {
                        VStack{
                            Text("Adult").font(.title2)
                            Text("18 + y/o")
                        }
                    })
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(.white) // does nothing, used for furture reference
                    
                    Button(action:
                            {
                        adultPatient = false
                        pediPatient = true
                        infantPatient = false
                    }, label: {
                        VStack{
                            Text("Pediatric").font(.title2)
                            Text("0 - 18 y/o")
                        }
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    
                    Button(action:
                            {
                        adultPatient = false
                        pediPatient = false
                        infantPatient = true
                    }, label: {
                        VStack{
                            Text("Infant").font(.title2)
                            Text("0 - 12 months")
                        }
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                }
                VStack // vstack PT info begin
                {
                    if adultPatient == true
                    {
                        
                        VStack
                        {
                            HStack // hstack because it looks cleaner
                            {
                                // prompts for weight in KG
                                Text("Weight in KG: ")
                                TextField("KG", value: $weight, format: .number)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .keyboardType(.decimalPad) // opens number only keyboard
                            }
                        }
                    }
                    if pediPatient == true
                    {
                        
                        VStack{
                            Text("Patient's age: ")
                            HStack
                            {
                                Text("Years: ")
                                    .font(.title3)
                                TextField("Years", value: $age, format: .number)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .keyboardType(.decimalPad)
                                
                            }
                            
                            HStack
                            {
                                Text("Weight in KG: ")
                                TextField("KG", value: $weight, format: .number)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .keyboardType(.decimalPad)
                            }
                            Text("If weight unknown:") // because weight is more important
                            // for pediatric patients, I included this feature.
                            // This takes the patient's age and outputs the average weight
                            // for boys and girls according to the age, according to the
                            // CDC.
                            Button(action:
                                    {
                                weight = pediatricWeightCalc(age: Int(age ?? 0))
                            }, label: {
                                VStack{
                                    Text("Weight based on age: ")
                                }
                            })
                            .buttonStyle(.borderedProminent)
                        }
                    }
                    if infantPatient == true
                    {
                        HStack
                        {
                            Text("Months: ")
                                .font(.title3)
                            TextField("Months", value: $months, format: .number)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                                .keyboardType(.decimalPad)
                        }
                        HStack
                        {
                            Text("Weight in KG: ")
                            TextField("KG", value: $weight, format: .number)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                                .keyboardType(.decimalPad)
                        }
                        Text("If weight unknown:")
                        Button(action:
                                { // I instantiated an Infant class because it was easier
                            // and I think cleaner to use the class as opposed to a
                            // standalone function.
                            let someInfantPatient = Infant(months: Int(months ?? 0))
                            weight = someInfantPatient.infantWeightCalc(months: Int(months ?? 0))
                        }, label: {
                            VStack{
                                Text("Weight based on age: ")
                            }
                        })
                        .buttonStyle(.borderedProminent)
                    }
                    
                    VStack
                    {
                        HStack
                        {
                            if age == 0
                            {
                                Text("Patient's age in months: ")
                                TextField("Months", value: $months, format: .number)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .keyboardType(.decimalPad)
                            }
                            if Int(months ?? 0) < 0
                            {
                                Text("Invalid entry. ")
                            }
                        }
                    } // end VStack
                    
                    VStack // buttons
                    {
                        let someDrugCalculation = DrugCalculation(weight: Int(weight ?? 0), age: Int(age ?? 0), months: Int(months ?? 0))
                        let pediTubeSizing = PedTubeSizing(weight: Int(weight ?? 0), age: Int(age ?? 0), months: Int(months ?? 0))
                        let someInfantPatient = Infant(months: Int(months ?? 0))
                        Button(action: {rsi.toggle()}, label: { Text("RSI")})
                        // I only implemented RSI because that is the highest
                        // acuity procedure. CPR will use the tube sizing from RSI
                        // Pediatric code meds are easier to calculate than RSI.
                        // One day I will implement the CPR functions.
                        if rsi
                        {
                            // this was a scroll view, but having the scroll
                            // view higher worked better.
                            VStack
                            {
                                Text("Tube Size: ") .font(.title).underline()
                                if (pediPatient == true) || (infantPatient == true)
                                {
                                    Text("(Formula: age/4 + 3 or age/4 + 3.5)").font(.footnote)
                                }
                                // I only implemented cuffed tube sizing because my
                                // fire department only has cuffed tubes.
                                if adultPatient
                                {
                                    Text("6.0, 7.0, or 8.0 depending on size.")
                                    Text(" ")
                                }
                                else if pediPatient
                                {
                                    Text(pediTubeSizing.CalculateCuffedTube()).fontWeight(.bold)
                                    Text(" ")
                                }
                                else if infantPatient
                                {
                                    Text(someInfantPatient.CalculateCuffedTube()).fontWeight(.bold)
                                    Text(" ")
                                }
                                
                                Text("Initial Doses").font(.title).underline()
                                Text(" ")
                                
                                Text("Ketamine Induction Dose: ") .font(.title2).underline()
                                Text(someDrugCalculation.CalculateKetamineInduction()).fontWeight(.bold)
                                Text(" ")
                                
                                Text("Versed Induction Dose: ").font(.title2).underline()
                                Text(someDrugCalculation.CalculateVersedInduction()).fontWeight(.bold)
                                Text(" ")
                                
                                Text("Succinylcholine Dose: ").font(.title2).underline()
                                Text(someDrugCalculation.CalculateSuccinylcholineInitial()).fontWeight(.bold)
                                Text("ONSET 30-45 SECONDS, DURATION 3-5 MINUTES").font(.footnote) 
                                // Some medications need some
                                // clarifying notes, such as this one
                                Text(" ")
                                
                                Text("Rocuronium Dose: ").font(.title2).underline()
                                Text(someDrugCalculation.CalculateRocuroniumInitial()).fontWeight(.bold)
                                Text("ONSET 2-3 MINUTES, DURATION 30 MINUTES").font(.footnote)
                                Text(" ")
                                
                                Text("Continued Doses").font(.title).underline()
                                Text(" ")
                                
                                Text("Rocuronium Continued Paralysis Dose:").font(.title2).underline()
                                Text(someDrugCalculation.CalculateRocuroniumContinued()).fontWeight(.bold)
                                Text("Q 15 minutes as needed").font(.footnote)
                                Text(" ")
                                
                                Text("Ketamine Continued Sedation Dose:").font(.title2).underline()
                                Text("Infusion:")
                                Text(someDrugCalculation.CalculateKetamineContinuedInfusion()).fontWeight(.bold)
                                Text("Push Dose:")
                                Text(someDrugCalculation.CalculateKetamineContinuedPush()).fontWeight(.bold)
                                Text("Q 10 minutes as needed").font(.footnote)
                                Text(" ")
                                
                                Text("Versed Continued Sedation Dose:").font(.title2).underline()
                                Text(someDrugCalculation.CalculateVersedContinued()).fontWeight(.bold)
                                Text(" ")
                                
                                Text("Lorazepam Continued Sedation Dose:").font(.title2).underline()
                                Text(someDrugCalculation.CalculateLorazepamContinued()).fontWeight(.bold)
                                Text(" ")
                                
                                Text("Morphine Continued Sedation Dose:").font(.title2).underline()
                                Text(someDrugCalculation.CalculateMorphineContinued()).fontWeight(.bold)
                                Text(" ")
                                
                                Text("Fentanyl Continued Sedation Dose:").font(.title2).underline()
                                Text(someDrugCalculation.CalculateFentanylContinued()).fontWeight(.bold)
                                Text(" ")
                            }
                            
                        } // end IF RSI
                        
                    } // end buttons VStack
                    
                } // end VPrimary
            }
        }
        }
    }
    
    class PediWeightCalc
    {
        var age: Int
        var months: Int
        
        init(age: Int = 0, months: Int = 0)
        {
            self.age = age
            self.months = months
        }
    }
    
    func pediatricWeightCalc(age: Int = 0, months: Int = 0) -> Double
    {
        let averageWeight: [Double] = [3.9, 10.0, 12.4, 14.1, 16.1, 18.2, 20.5, 23.0, 25.8, 28.9, 32.6, 36.7, 41.2, 45.9, 50.0, 54.3, 57.5, 60]
        
//        let averageWeightYears: [Int] = [4, 10, 12, 14, 16, 18, 21, 23, 26, 29, 33, 37, 41, 46, 50, 54, 58, 60]
        // I was experimenting with calculating dosages based on an integer
        let averageWeightMonths: [Double] = [3.6, 4.3, 5.1, 5.8, 6.4, 7.0, 7.6, 8.0, 8.5, 8.9, 9.3, 9.6, 9.9]
        
        return averageWeight[age]
    }
    class PedTubeSizing
    {
        var weight: Int
        var age: Int
        var months: Int
        
        init(weight: Int, age: Int, months: Int = 0)
        {
            self.weight = weight
            self.age = age
            self.months = months
        }
        
        func CalculateCuffedTube() -> String
        {
            // Tube sizing by age is according to the American Heart Association
            // Pediatric Advanced Live Support curriculum
            if age == 1
            {
                return "Cuffed Tube: 3.0, 3.5, or 4.0"
            }
            if age == 2
            {
                return "Cuffed Tube: 3.5 or 4.0"
            }
            if age == 3
            {
                return "Cuffed Tube: 3.5, 4.0, 4.5"
            }
            if age == 4
            {
                return "Cuffed Tube: 4.0 or 4.5"
            }
            if age == 5
            {
                return "Cuffed Tube: 4.0, 4.5, or 5.0"
            }
            if age == 6
            {
                return "Cuffed Tube: 4.5 or 5.0"
            }
            if age == 7
            {
                return "Cuffed Tube: 4.5, 5.0, or 5.5"
            }
            if age == 8
            {
                return "Cuffed Tube: 5.0 or 5.5"
            }
            if age == 9
            {
                return "Cuffed Tube: 5.0, 5.5, or 6.0"
            }
            if age == 10
            {
                return "Cuffed Tube: 5.5 or 6.0"
            }
            else
            {
                return "6.0, 7.0, or 8.0 depending on size."
            }
        }
        
        //    Several formulas such as the ones below allow estimation of proper endotracheal tube size for children 1 to 10 years of age, based on the child's age:
        
        //    Uncuffed endotracheal tube size (mm ID) = (age in years/4) + 4
        //    Cuffed endotracheal tube size (mm ID) = (age in years/4) + 3
    }
    
    class Infant // I wanted to experiment using classes as opposed to standalone functions.
    {
        var months: Int
        
        init(months: Int = 0) // this brings in the user input
        {
            self.months = months
        }
        func infantWeightCalc(months: Int = 0) -> Double
        {
            let averageWeightMonths: [Double] = [3.6, 4.3, 5.1, 5.8, 6.4, 7.0, 7.6, 8.0, 8.5, 8.9, 9.3, 9.6, 9.9]
            
            if months > 0
            {
                return averageWeightMonths[months]
            }
            else { return 0.0 }
        }
        
        func CalculateCuffedTube() ->String
        {
            if months <= 6
            {
                return "Cuffed Tube: 2.5, 3.0, or 3.5"
            }
            else
            {
                return "Cuffed Tube: 3.5 or 4.0"
            }
        }
    }
    
    class DrugCalculation
    {
        var weight: Int
        var age: Int
        var months: Int
        var pediatric = false
        
        init(weight: Int, age: Int, months: Int = 0) {
            self.weight = weight
            self.age = age
            self.months = months
            if age < 18
            {
                pediatric = true
            }
            else { pediatric = false}
        }
        
        func CalculateKetamineInduction() -> String
        {
            let lowerDose = Double(weight)
            let upperDose = Double(weight) * 4.5
            let idealDose = Double(weight) * 2
            
            return "\(roundMed(dose:lowerDose)) mg to \(roundMed(dose:upperDose)) mg (\(roundMed(dose:idealDose)) mg ideal)"
        }
        func CalculateVersedInduction() -> String
        {
            let lowerDose = Double(weight) * 0.1
            let upperDose = Double(weight) * 0.4
            let commonDose = Double(weight) * 0.2
            
            return "\(roundMed(dose:lowerDose)) mg to \(roundMed(dose:upperDose)) mg (\(roundMed(dose:commonDose)) mg most common)"
        }
        
        func CalculateSuccinylcholineInitial() -> String
        {
            let suxDose = Double(weight) * 2
            return "\(roundMed(dose:suxDose)) mg"
        }
        func CalculateRocuroniumInitial() -> String
        {
            let rocDose = Double(weight)
            return "\(roundMed(dose:rocDose)) mg"
        }
        func CalculateRocuroniumContinued() -> String
        {
            //        var lowerDose = round(Double(weight) * 0.1 * 100) / 100.0
            let lowerDose = Double(weight) * 0.1
            let upperDose = Double(weight)
            return "\(roundMed(dose:lowerDose)) mg to \(roundMed(dose:upperDose)) mg"
        }
        func CalculateKetamineContinuedInfusion() -> String
        {
            let lowerDose = Double(weight) * 0.1
            let upperDose = Double(weight) * 0.5
            return "\(roundMed(dose:lowerDose)) to \(roundMed(dose:upperDose)) mg/min"
        }
        func CalculateKetamineContinuedPush() -> String
        {
            let lowerDose = Double(weight) * 0.5
            return "\(lowerDose) mg to \(weight) mg"
        }
        func CalculateVersedContinued() -> String
        {
            if pediatric
            {
                let lowerDose = Double(weight) * 0.05
                if lowerDose > 4
                {
                    return "1-4 mg PRN"
                }
                else
                {
                    return "\(roundMed(dose:lowerDose)) mg PRN"
                }
            }
            else
            {
                return "1-4 mg PRN"
            }
        }
        func CalculateLorazepamContinued() -> String
        {
            let lowerDose = Double(weight) * 0.05
            let upperDose = 4
            if lowerDose >= Double(upperDose)
            {
                return "\(upperDose) mg PRN"
            }
            else
            {
                return "\(roundMed(dose:lowerDose)) mg up to \(upperDose) mg PRN"
            }
        }
        func CalculateMorphineContinued() -> String
        {
            if pediatric
            {
                let dose = Double(weight) * 0.1
                if dose > 2.0
                {
                    return "2 mg"
                }
                else
                {
                    return "\(roundMed(dose:dose)) mg not to exceed 2 mg"
                }
            }
            else
            {
                return "2-4 mg PRN "
            }
            
        }
        func CalculateFentanylContinued() -> String
        {
            let lowerDose = Double(weight) * 0.5
            let upperDose = Double(weight)
            return "\(roundMed(dose:lowerDose)) mcg to \(roundMed(dose:upperDose)) mcg PRN"
        }
        
        func roundMed(dose: Double) -> Double
        {
            let roundedDose = round(dose * 100) / 100.0
            return roundedDose
        }
    }

#Preview {
    DrugCalculationsView()
}
