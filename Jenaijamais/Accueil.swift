//
//  Accueil.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 27/06/2023.
//

import SwiftUI

struct Accueil: View {
    
    var width: CGFloat = UIScreen.main.bounds.width - 60
    var height: CGFloat = UIScreen.main.bounds.height - 130
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                VStack {
                    VStack {
                        
                        Text("Drunk")
                            .neonderhrawFont(size: 100)
                            .foregroundColor(Color("gold"))
                            .padding(.top, 80)
                            .shadow(color: Color("goldy"), radius: 12)
                            
                        
                        Text("Party")
                            .neonderhrawFont(size: 100)
                            .foregroundColor(Color("gold"))
                            .padding(.top, -100)
                            .padding(.bottom, 40)
                            .shadow(color: Color("goldy"), radius: 12)

                        
                        ListeJoueurs()
                        

                        BoutonPlay()
                            .padding(.bottom, 100)
                            .padding(.top, 40)
                        

                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(
                        LinearGradient(colors: [Color("colorbottom"), Color("colorcard")], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(24)
                }
//                .frame(width: (width + 8), height: (height + 8))
//                .background(
//                    LinearGradient(colors: [Color("gold"), Color("goldy")], startPoint: .topLeading, endPoint: .bottomTrailing))
//                .cornerRadius(28)
//                .shadow(color: .gray, radius: 12)
            }
            .ignoresSafeArea()
//            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//            .background(Color.black)
        }
        .navigationBarHidden(true)
    }
}

struct Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Accueil()
            .environmentObject(ParticipantsList())
    }
}
