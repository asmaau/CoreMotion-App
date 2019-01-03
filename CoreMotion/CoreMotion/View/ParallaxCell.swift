//
//  ParallaxCell.swift
//  Accelerometron
//
//  Created by Asmaa Nour on 1/3/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var desLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      setupParallex()
    }

    func configureCell(withImage image: UIImage ,andDescription desc: String){
        imgView.image = image
        desLbl.text = desc
    }
    func setupParallex(){
        let min = CGFloat (-30)
        let max = CGFloat(30)
        let xMlotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMlotion.minimumRelativeValue = min
        xMlotion.maximumRelativeValue = max
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongHorizontalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        let motionEffectGroub = UIMotionEffectGroup()
        motionEffectGroub.motionEffects = [xMlotion , yMotion]
        imgView.addMotionEffect(motionEffectGroub)
    }

}
