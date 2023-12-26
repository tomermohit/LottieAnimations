//
//  LottieView.swift
//  LottieAnimations
//
//  Created by Mohit Tomer on 26/12/23.
//

import SwiftUI

struct LottieView: View {
    var body: some View {
        
        ZStack {
            FCLottieView(nameLottieJsonFile: "linkVehicleError.json", loopMode: .loop)
                .padding(.top, 24)
                .frame(minWidth: 328, minHeight: 235)
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    LottieView()
}
