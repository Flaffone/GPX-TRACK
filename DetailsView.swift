//
//  DetailsView.swift
//  GPX TRACK
//
//  Created by Flavio Maria Lombardi on 22/11/22.
//

import SwiftUI

struct DetailsView: View {
    @State var card : Card
    
    var body: some View {
        VStack(alignment: .leading){
           Text("Your Route")
                .foregroundColor(.yellow)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 370, alignment: .leading)
            
            HStack{
                
                card.image.resizable().frame(width:160,height: 160).clipShape(RoundedRectangle(cornerRadius: 13))
                    .padding(.trailing, 10)
                VStack{
                    card.image.resizable().frame(width:160,height: 75).clipShape(RoundedRectangle(cornerRadius: 13))
                    HStack{
                        card.image.resizable().frame(width:75,height: 75).clipShape(RoundedRectangle(cornerRadius: 13))
                        card.image.resizable().frame(width:75,height: 75).clipShape(RoundedRectangle(cornerRadius: 13))
                    }
                }
                
            }
            .frame(width: 370, alignment: .leading)
            
            Text(card.title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.yellow)
                .frame(width: 370, alignment: .leading)
            Text(card.desc)
                .foregroundColor(.white)
                .fontWeight(.regular)
                .frame(width: 370, alignment: .leading)
            HStack{
                VStack{
                    HStack{
                        VStack{
                            Image(systemName: "sunrise")
                                .foregroundColor(.yellow)
                            Text("SUNRISE")
                                .font(.caption)
                                .foregroundColor(Color.white)
                            Text("06:30")
                                .font(.caption)
                                .foregroundColor(Color.white)
                            
                        }.frame(width: 80,height: 80)
                            .background(Color("gc"))
                            .cornerRadius(14.6)
                        VStack{
                            Image(systemName: "sunrise")
                                .foregroundColor(.yellow)
                            Text("DUSK")
                                .font(.caption)
                                .foregroundColor(Color.white)
                            Text("17:30")
                                .font(.caption)
                                .foregroundColor(Color.white)
                            
                        }.frame(width: 80,height: 80)
                            .background(Color("gc"))
                            .cornerRadius(14.6)
                    }
                    HStack{
                        VStack{
                            Image(systemName: "sunrise")
                                .foregroundColor(.yellow)
                            Text("SUNSET")
                                .font(.caption)
                                .foregroundColor(Color.white)
                            Text("17:20")
                                .font(.caption)
                                .foregroundColor(Color.white)
                            
                        }.frame(width: 80,height: 80)
                            .background(Color("gc"))
                            .cornerRadius(14.6)
                        VStack{
                            Text("10°")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                            Text("AVERAGE")
                                .font(.caption)
                                .foregroundColor(Color.white)
                        }.frame(width: 80,height: 80)
                            .background(Color("gc"))
                            .cornerRadius(14.6)
                    }
                   
                }
                VStack{
                  Text("JUNE 2022")
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity)
                        .background(.yellow)
                        
                    Spacer()
                    Text("6")
                        .font(.system(size:70))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(width: 50.0, height: 50.0)
                        .controlSize(.regular)
                    Spacer()
                    Text("Monday")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                    Spacer()
                       
                }
                .background(Color("gc"))
                .frame(width: 180,height: 182)
                .cornerRadius(14.6)
            }.frame(width: 370)
            
            HStack{
                HStack{
                    Image(systemName: "sunrise")
                        .foregroundColor(.yellow)
                    VStack{
                        Text("START")
                            .font(.caption)
                            .foregroundColor(Color.white)
                        Text(card.start)
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(width: 350/9, alignment: .leading)
                    }
                }
                .frame(width: 350/3,height: 56)
                .background(Color("gc"))
                .cornerRadius(14.6)
                
                
                HStack{
                    Image(systemName: "sunrise")
                        .foregroundColor(.yellow)
                    VStack{
                        Text("FINISH")
                            .font(.caption)
                            .foregroundColor(Color.white)
                        Text(card.start)
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(width: 350/9, alignment: .leading)                    }
                    
                }
                .frame(width: 350/3,height: 56)
                .background(Color("gc"))
                .cornerRadius(14.6)
                HStack{
                    Image(systemName: "sunrise")
                        .foregroundColor(.yellow)
                        VStack{
                            Text("TOTAL")
                                .font(.caption)
                                .foregroundColor(Color.white)
                            Text(card.start)
                                .font(.caption)
                                .foregroundColor(.white)
                                .frame(width: 350/9, alignment: .leading)
                        }
                    
                }
                .frame(width: 350/3,height: 56)
                .background(Color("gc"))
                .cornerRadius(14.6)
            }.frame(width: 370, alignment: .center)

            VStack(alignment: .leading ){
                
                HStack{
                    Text("LONGITUDINE:")
                        .foregroundColor(.yellow)
                    
                    Text("43.18310000°")
                        .foregroundColor(.white)
                }
                
                HStack{
                    Text("LATITUDINE:")
                        .foregroundColor(.yellow)
                    
                    Text("-5.34476000°")
                        .foregroundColor(.white)
                }
            }
            .padding(.top)
        }
        .frame(maxWidth: UIScreen.main.bounds.width,maxHeight: UIScreen.main.bounds.height)
        .background(.black)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(card: Card(title: "Dolomiti", date: "06.06.2022", imageName: "Dolomiti", desc: "Descrizione 1", start: "11:00", end : "17:00", total: "06:00"))
    }
}

