//
//  ViewController.swift
//  ExRatingPopup
//
//  Created by Jake.K on 2022/05/03.
//

import UIKit

class ViewController: UIViewController {
  private let button: UIButton = {
    let button = UIButton()
    button.setTitle("버튼", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.setTitleColor(.blue, for: .highlighted)
    button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.button)
    NSLayoutConstraint.activate([
      self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
      self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
  }
  
  @objc private func didTapButton() {
    AppStoreReviewManager.requestReviewIfAppropriate()
  }
}
