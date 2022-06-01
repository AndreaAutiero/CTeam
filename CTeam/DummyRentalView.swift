//
//  DummyRentalView.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/05/22.
//

import SwiftUI

struct DummyRentalView: View {
    @State var selectedIndex: Int = 0
    @State var dispAlert: Bool = false
    @State var dttm: Date
    var body: some View {
        VStack {
            HStack {
                Spacer()
                DatePicker("ui.rental.dttm".localized, selection: $dttm).labelsHidden()
                Spacer()
            }.padding()
            HStack {
                Text("car.label".localized).frame(alignment: .leading)
                Spacer()
                Picker("car.label".localized, selection: $selectedIndex) {
                    ForEach(Array(cars.enumerated()), id: \.element) { index, element in
                        Text(element.name).tag(index)
                    }
                }
                    .pickerStyle(.segmented)
            }.padding()
            Divider()
            VStack {
                LabelDetail(label: "ui.rental.label.volume".localized, detail: String(cars[$selectedIndex.wrappedValue].volume) + " l")
                LabelDetail(label: "ui.rental.label.weight".localized, detail: String(cars[$selectedIndex.wrappedValue].weight) + " kg")
                LabelDetail(label: "ui.rental.label.maxspeed".localized, detail: String(cars[$selectedIndex.wrappedValue].maxSpeed) + " km/h")
                LabelDetail(label: "ui.rental.label.horsepower".localized, detail: String(cars[$selectedIndex.wrappedValue].horsepower) + " cv")
            }
            Divider()
            HStack {
                Text("token.label".localized)
                Spacer()
                Text("0")
            }.padding()
            HStack {
                Text("cost.label".localized)
                Spacer()
                Text("0")
            }.padding()
            Spacer()
            Button(role: .none, action: {
                dispAlert = true
            }) {
                Text("rent.label".localized).bold().foregroundColor(Color.white).padding(18).background {
                    Color.azzurroCielo
                }.cornerRadius(6)
            }
            .alert("fakeserver.label".localized, isPresented: $dispAlert) {
                Button("dismiss.label".localized, role: .cancel) {
                    dispAlert = false
                }
            }
            Spacer()
        }.navigationTitle("ui.circuit.rental".localized)
    }
}

struct DummyRentalView_Previews: PreviewProvider {
    static var previews: some View {
        DummyRentalView(dttm: Date())
    }
}
