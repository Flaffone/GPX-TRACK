//
//  Route.swift
//  GPX TRACK
//
//  Created by Flavio Maria Lombardi on 18/11/22.
//

import SwiftUI

struct Route: View {
    @State var cards : [Card] = [
        Card(title: "Dolomiti", date: "06.06.2022", imageName: "Dolomiti", desc: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis.", start: "11:00", end : "17:00", total: "06:00"),
        Card(title: "Gransasso", date: "10.06.2022", imageName:"Gransasso", desc: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis.", start: "07:00", end : "12:00", total: "06:00"),
        Card(title: "Vesuvio", date: "12.06.2022", imageName: "Vesuvio", desc: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis.", start: "11:00", end : "17:00", total: "06:00"),
        Card(title: "Matese", date: "22.06.2022", imageName: "Matese", desc: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis.", start: "11:00", end : "17:00", total: "06:00"),
        Card(title: "Raiamagra", date: "30.06.2022", imageName: "Raiamagra", desc: "", start: "11:00", end : "17:00", total: "06:00")]
    var body: some View {
        VStack{
            HStack{
                Text("Your Routes").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.yellow)
                Spacer()
                
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(cards){ box in
                        
                            //Text(box.title).padding(.trailing, 0.0)
                            NavigationLink(destination: DetailsView(card:box)){
                                VStack {
                                    box.image.resizable().frame(width:160,height: 160).clipShape(RoundedRectangle(cornerRadius: 13))
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 13).frame(height:40)
                                            .foregroundColor(Color("gc"))
                                        HStack{
                                            Image(systemName: "point.topleft.down.curvedto.point.bottomright.up")
                                                .foregroundColor(Color.yellow)
                                                .padding(.leading, 20)
                                            VStack{
                                                Text(box.title)
                                                    .foregroundColor(Color.yellow)
                                                    .frame(width:120, alignment: .leading)
                                                Text(box.date)
                                                    .font(.caption2)
                                                    .foregroundColor(Color.yellow)
                                                    .frame(width:120, alignment: .leading)
                                            }
                                        }
                                        .foregroundColor(.white)
                                    }
                                }
                                
                            }
                    }}}
            MultiDatePicker("Label", selection: /*@PLACEHOLDER=Binding<Set<DateComponents>>@*/.constant([]))
            Spacer()
            
        }.padding()
    }
}

struct Route_Previews: PreviewProvider {
    static var previews: some View {
        Route()
    }
}
