//
//  ScoreInfoView.swift
//  CTeam
//
//  Created by Andrea Autiero on 26/04/22.
//

import SwiftUI

struct ScoreInfoView: View {
    @State var displaySectors: Bool = false
    var score: Score
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 0) {
                VStack {
                    Text("ui.score.lap".localized).foregroundColor(Color.init(red: 8/255, green: 51/255, blue: 84/255)).padding(.bottom).overlay(
                            Rectangle()
                                .frame(height: !displaySectors ? 4 : 0)
                                .foregroundColor(Color.init(red: 8/255, green: 51/255, blue: 84/255)),
                            alignment: .bottom
                    ).padding([.leading,.trailing, .top])
                }.onTapGesture {
                    displaySectors = false
                }
                Spacer()
                VStack {
                    Text("ui.score.sector".localized).foregroundColor(Color.init(red: 8/255, green: 51/255, blue: 84/255)).padding(.bottom).overlay(
                        Rectangle()
                            .frame(height: displaySectors ? 4 : 0)
                            .foregroundColor(Color.init(red: 8/255, green: 51/255, blue: 84/255)),
                        alignment: .bottom
                    ).padding([.leading,.trailing, .top])
                }.onTapGesture {
                    displaySectors = true
                }
            }
                ScrollView {
                    VStack(spacing: 0) {
                        if(!displaySectors) {
                            // GIRI
                            HStack {
                                Text("LAP").frame(width: 32).padding()
                                Spacer()
                                Text("GAP").frame(width: 96).padding()
                                Spacer()
                                Text("TIME").frame(width: 96).padding()
                            }
                            .foregroundColor(Color.white)
                            .background(Color.init(red: 35/255, green: 36/255, blue: 41/255))
                            ForEach(Array(score.giri.enumerated()), id: \.element) { index, element in
                                HStack {
                                    Text(String(index + 1)).bold().frame(width: 27, alignment: .leading).padding([.leading, .top, .bottom])
                                    Rectangle().fill(Color.init(Color.init(red: 28/255, green: 129/255, blue: 217/255).cgColor!)).frame(width: 5, height: 16).padding([.top,.bottom,.trailing])
                                    Spacer()
                                    if(element.gap == 0) {
                                        Text("")
                                    } else {
                                        Text(String(element.gap)).frame(width: 96, height: 28, alignment: .center).background(Color.init(red: 56/255, green: 57/255, blue: 62/255)).cornerRadius(16)
                                    }
                                    Spacer()
                                    if(element.time == 0) {
                                        Text("PIT").bold().frame(width: 96, height: 28, alignment: .center).foregroundColor(Color.red).padding()
                                    } else {
                                        Text(String(Int(element.time / 60)) + ":" + String(format: "%.3f", element.time.truncatingRemainder(dividingBy: 60))).frame(width: 96, height: 28, alignment: .center).background(Color.init(red: 56/255, green: 57/255, blue: 62/255)).cornerRadius(16).padding()
                                    }
                                }
                                .background(index % 2 == 0 ? Color.init(red: 28/255, green: 28/255, blue: 36/255) : Color.init(red: 35/255, green: 36/255, blue: 41/255))
                                .foregroundColor(Color.white)
                            }
                        } else {
                            // SETTORI
                            HStack {
                                Text("SECTOR 1").frame(width: 96).padding()
                                Spacer()
                                Text("SECTOR 2").frame(width: 96).padding()
                                Spacer()
                                Text("SECTOR 3").frame(width: 96).padding()
                            }
                            .foregroundColor(Color.white)
                            .background(Color.init(red: 35/255, green: 36/255, blue: 41/255))
                            ForEach(Array(score.settori.enumerated()), id: \.element) { index, element in
                                HStack {
                                    if(element.time1 == 0) {
                                        Text("").bold().frame(width: 96, height: 28, alignment: .center).foregroundColor(Color.red).padding()
                                    } else {
                                        Text(element.time1.asWallclockTime).frame(width: 96, height: 28, alignment: .center).background(Color.init(red: 56/255, green: 57/255, blue: 62/255)).cornerRadius(16).padding()
                                    }
                                    Spacer()
                                    if(element.time2 == 0) {
                                        Text("PIT").bold().frame(width: 96, height: 28, alignment: .center).foregroundColor(Color.red).padding()
                                    } else {
                                        Text(element.time2.asWallclockTime).frame(width: 96, height: 28, alignment: .center).background(Color.init(red: 56/255, green: 57/255, blue: 62/255)).cornerRadius(16).padding()
                                    }
                                    Spacer()
                                    if(element.time3 == 0) {
                                        Text("PIT").bold().frame(width: 96, height: 28, alignment: .center).foregroundColor(Color.red).padding()
                                    } else {
                                        Text(element.time3.asWallclockTime).frame(width: 96, height: 28, alignment: .center).background(Color.init(red: 56/255, green: 57/255, blue: 62/255)).cornerRadius(16).padding()
                                    }
                                }
                                .background(index % 2 == 0 ? Color.init(red: 28/255, green: 28/255, blue: 36/255) : Color.init(red: 35/255, green: 36/255, blue: 41/255))
                                .foregroundColor(Color.white)
                            }
                        }
                    }
                }
                .background(Color.init(red: 28/255, green: 28/255, blue: 36/255))
                .navigationBarTitle(score.nome)
        }
    }
}

struct ScoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreInfoView(score: scores[0])
    }
}
