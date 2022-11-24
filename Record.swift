//
//  Record.swift
//  GPX TRACK
//
//  Created by Flavio Maria Lombardi on 18/11/22.
//

import SwiftUI

import SwiftUI
// 1.
import MapKit

struct Record: View {
    // 2.
    @State private var region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: 42.468982,
                    longitude: 13.565180),
                span: MKCoordinateSpan(
                    latitudeDelta: 10,
                    longitudeDelta: 10)
                )

    var body: some View {
        
        ZStack {
            Map(coordinateRegion: $region)
                
            VStack
            {
                Spacer()
                HStack {
                    Spacer()
                    Text("00:00")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color.yellow)
                    Spacer()
                    Button(action:{}){
                        
                        Circle()
                            .frame(width: 90, height: 90)
                            .foregroundColor(.yellow)
                            .overlay{
                                ZStack{
                                    Circle()
                                        .foregroundColor(.black)
                                        .frame(width: 83, height:83)
                                    Text("Walk")
                                        .foregroundColor(.yellow)
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                }
                                
                            }

                        .shadow(color:.yellow, radius: 20)
                        
                    }
                    Spacer()
                    Text("00km")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color.yellow)
                    Spacer()
                }
                
                .padding(.bottom, 30)
            }
            // 3.
           
        }
       
    }
}
struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
    }
    
}
