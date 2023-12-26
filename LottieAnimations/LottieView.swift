//
//  LottieView.swift
//  Appetizer
//
//  Created by Mohit Tomer on 26/12/23.
//

import SwiftUI
import Lottie

struct FCLottieView: UIViewRepresentable {
    var nameLottieJsonFile: String
    var loopMode: LottieLoopMode = .playOnce
    var animationView = LottieAnimationView()
    var completion: (() -> Void)?

    // MARK: Create Animation View
    func makeUIView(context: UIViewRepresentableContext<FCLottieView>) -> UIView {
        let view = UIView(frame: .zero)
        animationView.animation = LottieAnimation.named(nameLottieJsonFile)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play { _ in
            completion?()
        }
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
                                        animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
                                        animationView.widthAnchor.constraint(equalTo: view.widthAnchor)])
        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<FCLottieView>) {}
}



