//
//  CarrosselTabView.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/16/24.
//

import SwiftUI

struct CarrosselTabView: View {
    let bannerList : [ServiceType] = [
        ServiceType(id: 1, nome: "1", imagem: "medalha"),
        ServiceType(id: 2, nome: "2", imagem: "medalha_torre"),
        ServiceType(id: 3, nome: "3", imagem: "duas_medalhas"),
        ServiceType(id: 4, nome: "4", imagem: "atletismo_rapido"),]
    var body: some View {
        TabView {
            ForEach(bannerList) {
                banner in CarrosselItemView(banner: banner)
            }
        }.frame(width: 300, height: 300)
            .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarrosselTabView()
}
