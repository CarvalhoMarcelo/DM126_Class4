//
//  FeatureType.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct FeatureType: View {
    let service : ServiceType
    var body: some View {
        VStack {
            Image(service.imagem)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
            Text(service.nome)
                .font(.system(size: 20))
        }.frame(width: 100, height: 100)
    }
}

#Preview {
    FeatureType(service:
        ServiceType(id: 1,
                    nome: "Agilidade",
                    imagem: "agilidade"))
}
