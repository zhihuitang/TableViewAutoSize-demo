/// Copyright (c) 2018 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit

class AuteurTableViewCell: UITableViewCell {

    @IBOutlet weak var bioLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var source: UILabel!
  @IBOutlet weak var auteurImageView: UIImageView!

  func configure(auteur: Auteur) {
    bioLabel.text = auteur.bio
    bioLabel.textColor = UIColor(red:0.75, green:0.75, blue:0.75, alpha:1.0)
    auteurImageView.image = UIImage(named: auteur.image)
    nameLabel.text = auteur.name
    source.text = auteur.source

    nameLabel.textColor = .white
    bioLabel.textColor = UIColor(red:0.75, green:0.75, blue:0.75, alpha:1.0)
    source.textColor = UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)
    source.font = UIFont.italicSystemFont(ofSize: source.font.pointSize)
    nameLabel.textAlignment = .center
    selectionStyle = .none

    auteurImageView.layer.cornerRadius = auteurImageView.frame.size.width / 2
  }
}
