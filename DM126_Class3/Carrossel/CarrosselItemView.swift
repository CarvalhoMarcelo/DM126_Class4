//
//  CarrosselItemView.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/16/24.
//

import SwiftUI

struct CarrosselItemView: View {
    var banner: ServiceType
    var body: some View {
        Image(banner.imagem)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
    }
}

#Preview {
    CarrosselItemView(banner:
        ServiceType(id: 1, nome: "", imagem:"atletismo_rapido"))
}
