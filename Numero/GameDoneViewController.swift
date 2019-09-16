/// Copyright (c) 2019 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:


import UIKit

class GameDoneViewController: UIViewController {

  @IBOutlet weak var scoreLabel: UILabel!
  
  var score: Int?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let finalScore = score {
      scoreLabel.text = "Your final score: \(finalScore)"
    }
  }
    
  @IBAction func playAgainPressed(_ sender: Any) {
    presentingViewController?.dismiss(animated: true, completion: nil)
  }


}
