// 
//  ViewController.swift
//  DualSenseDemo
//
//  Created by Ryan Ashton on 8/6/2023
//  Copyright © 2023 Ryan Ashton. All rights reserved.
//
    

import UIKit

class ViewController: UIViewController {
    
    let upperView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let upperTextStack: UIStackView = {
        let label01 = UILabel()
        label01.text = "PLATFORM"
        label01.font = UIFont.boldBody
        
        let label02 = UILabel()
        label02.text = "PS5"
        label02.font = .preferredFont(forTextStyle: .caption1)
        
        let nest01 = UIStackView(arrangedSubviews: [label01, label02])
        nest01.axis = .vertical
        
        let label03 = UILabel()
        label03.text = "RELEASE"
        label03.font = UIFont.boldBody
        
        let label04 = UILabel()
        label04.text = "11 JUNE"
        label04.font = .preferredFont(forTextStyle: .caption1)
        
        let nest02 = UIStackView(arrangedSubviews: [label03, label04])
        nest02.axis = .vertical
        
        let label05 = UILabel()
        label05.text = "PRICE"
        label05.font = UIFont.boldBody
        
        let label06 = UILabel()
        label06.text = "$500"
        label06.font = .preferredFont(forTextStyle: .caption1)
        
        let nest03 = UIStackView(arrangedSubviews: [label05, label06])
        nest03.axis = .vertical
        
        let stack = UIStackView(
            arrangedSubviews:[nest01, nest02, nest03])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .equalCentering
        
        return stack
    }()
    
    let lowerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = darkColor
        return view
    }()
    
    let addToCart: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = darkColor
        view.layer.cornerRadius = UIScreen.main.bounds.width * (buttonMult / 2)
        return view
    }()
    
    let whiteCircle: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 1, alpha: 0.1)
        view.layer.cornerRadius = (UIScreen.main.bounds.width * 1.09) / 2
        return view
    }()
    
    let controllerImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Controller")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let bookmark: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = darkColor
        view.layer.cornerRadius = UIScreen.main.bounds.width * (buttonMult / 2)
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dual Sense"
        label.font = UIFont.boldTitle
        label.textColor = UIColor(white: 0.9, alpha: 1)
        label.numberOfLines = 0
        return label
    }()
    
    let blurbLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "DualSense also adds a built-in microphone array which will enable players to easily chat with friends without a headset."
        label.font = .preferredFont(forTextStyle: .body)
        label.textColor = UIColor(white: 0.80, alpha: 1)
        label.numberOfLines = 3
        return label
    }()
    
    let features: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let feature01: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let feature01Image: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 4
        return view
    }()

    let feature01Title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Futuristic"
        label.font = UIFont.boldCaption1
        return label
    }()

    let feature01Caption: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Design"
        label.font = .preferredFont(forTextStyle: .caption2)
        return label
    }()

    let feature02: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let feature02Image: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .white
        view.layer.cornerRadius = 4
        return view
    }()
    
    let feature02Title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Haptic"
        label.font = UIFont.boldCaption1
        return label
    }()
    
    let feature02Caption: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Feedback"
        label.font = .preferredFont(forTextStyle: .caption2)
        return label
    }()
    
    let feature03: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let feature03Image: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .white
        view.layer.cornerRadius = 4
        return view
    }()
    
    let feature03Title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Built-in"
        label.font = UIFont.boldCaption1
        return label
    }()
    
    let feature03Caption: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Microphone"
        label.font = .preferredFont(forTextStyle: .caption2)
        return label
    }()

    let feature04: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let feature04Image: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .white
        view.layer.cornerRadius = 4
        return view
    }()
    
    let feature04Title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Fast Charge"
        label.font = UIFont.boldCaption1
        return label
    }()
    
    let feature04Caption: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "USB-C port"
        label.font = .preferredFont(forTextStyle: .caption2)
        return label
    }()

    let buyButton: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        return view
    }()
    
    let priceView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        return view
    }()
    
    let priceDollar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "$"
        label.font = .preferredFont(forTextStyle: .footnote)
        return label
    }()
    
    let priceAmount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "500"
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        return label
    }()
    
    let preOrderButton: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let preOrderText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Preorder"
        label.font = UIFont.boldBody
        return label
    }()
    
    let preOrderArrow: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(systemName: "arrow.right", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .light))
        view.contentMode = .scaleToFill
        view.tintColor = .white
        return view
    }()
    
    func applyBlackShadow(view: UIView, radius: CGFloat) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.9
        view.layer.shadowOffset = CGSize(width: 4, height: 4)
        view.layer.shadowRadius = radius
    }
    
    func applyGlowEffect(view: UIView, radius: CGFloat, intensity: Float) {
        let glowLayer = CALayer()
        glowLayer.backgroundColor = darkColor.cgColor
        glowLayer.shadowColor = UIColor.white.cgColor
        glowLayer.shadowOpacity = intensity
        glowLayer.shadowOffset = CGSize(width: -5, height: -5)
        glowLayer.shadowRadius = radius
        let glowLayerSize = CGSize(width: view.bounds.width + 10, height: view.bounds.height + 10)
        glowLayer.frame = CGRect(origin: CGPoint(x: -5, y: -5), size: glowLayerSize)
        glowLayer.cornerRadius = 8
        view.layer.addSublayer(glowLayer)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(upperView)
        self.view.addSubview(upperTextStack)
        self.view.addSubview(lowerView)
        self.view.addSubview(whiteCircle)
        self.view.addSubview(controllerImage)
        self.view.addSubview(addToCart)
        self.view.addSubview(bookmark)
        
        
        self.lowerView.addSubview(titleLabel)
        self.lowerView.addSubview(blurbLabel)
        
        self.lowerView.addSubview(features)
        self.features.addSubview(feature01)
        self.view.addSubview(feature01Image)
        self.view.addSubview(feature01Title)
        self.view.addSubview(feature01Caption)

        self.features.addSubview(feature02)
        self.view.addSubview(feature02Image)
        self.view.addSubview(feature02Title)
        self.view.addSubview(feature02Caption)
        
        self.features.addSubview(feature03)
        self.view.addSubview(feature03Image)
        self.view.addSubview(feature03Title)
        self.view.addSubview(feature03Caption)
        
        self.features.addSubview(feature04)
        self.view.addSubview(feature04Image)
        self.view.addSubview(feature04Title)
        self.view.addSubview(feature04Caption)
        
        self.view.addSubview(buyButton)
        self.view.addSubview(priceView)
        self.view.addSubview(priceDollar)
        self.view.addSubview(priceAmount)
        self.view.addSubview(preOrderButton)
        self.view.addSubview(preOrderText)
        self.view.addSubview(preOrderArrow)
        
        self.configureUI()
    }
    
    override func viewDidLayoutSubviews() {
        self.addGradientLayers()
        self.addGradienttoPreOrder()
        
        self.applyBlackShadow(view: bookmark, radius: 8)
        
        self.applyBlackShadow(view: self.feature01Image, radius: 9)
        self.applyGlowEffect(view: self.feature01Image, radius: 3, intensity: 0.08)
        self.applyBlackShadow(view: self.feature02Image, radius: 9)
        self.applyGlowEffect(view: self.feature02Image, radius: 3, intensity: 0.08)
        self.applyBlackShadow(view: self.feature03Image, radius: 9)
        self.applyGlowEffect(view: self.feature03Image, radius: 3, intensity: 0.08)
        self.applyBlackShadow(view: self.feature04Image, radius: 9)
        self.applyGlowEffect(view: self.feature04Image, radius: 3, intensity: 0.08)
        
        self.addImage(view: self.addToCart, imageName: "cart",inset: 20)
        self.addImage(view: self.bookmark, imageName: "bookmark", inset: 20)
        self.addImage(view: self.feature01Image, imageName: "gamecontroller", inset: 12)
        self.addImage(view: self.feature02Image, imageName: "dpad", inset: 12)
        self.addImage(view: self.feature03Image, imageName: "mic", inset: 12)
        self.addImage(view: self.feature04Image, imageName: "bolt.horizontal.circle", inset: 12)
        
        
        self.applyBlackShadow(view: self.buyButton, radius: 14)
        self.applyGlowEffect(view: self.buyButton, radius: 8, intensity: 0.17)
        
        
    }

    func addImage(view: UIView, imageName: String, inset: CGFloat) {
        let imageView = UIImageView(image: UIImage(systemName: imageName))
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        imageView.tintColor = .white
        imageView.frame = view.bounds.insetBy(dx: inset, dy: inset)
    }
    
    func addGradientLayers() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(red: 118/255, green: 196/255, blue: 208/255, alpha: 1).cgColor,
                                UIColor(red: 76/255, green: 72/255, blue: 192/255, alpha: 1).cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.frame = self.upperView.frame
        self.upperView.layer.addSublayer(gradientLayer)
    }
    
    func addGradienttoPreOrder() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(red: 85/255, green: 84/255, blue: 186/255, alpha: 1).cgColor,
                                UIColor(red: 121/255, green: 196/255, blue: 217/255, alpha: 1).cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.frame = self.preOrderButton.layer.bounds
        self.preOrderButton.layer.addSublayer(gradientLayer)
        #warning("I'm here...")
    }

    func configureUI() {
        
        upperView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        upperView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        upperView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        upperView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.44).isActive = true
        
        upperTextStack.topAnchor.constraint(equalTo: addToCart.topAnchor, constant: 30).isActive = true
        upperTextStack.bottomAnchor.constraint(equalTo: bookmark.topAnchor, constant: -30).isActive = true
        upperTextStack.leadingAnchor.constraint(equalTo: bookmark.leadingAnchor, constant: 0).isActive = true
        upperTextStack.trailingAnchor.constraint(equalTo: controllerImage.leadingAnchor, constant: -30).isActive = true
        
        lowerView.topAnchor.constraint(equalTo: self.upperView.bottomAnchor).isActive = true
        lowerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        lowerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        lowerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        addToCart.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * buttonMult).isActive = true
        addToCart.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * buttonMult).isActive = true
        addToCart.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                                       constant: UIScreen.main.bounds.width * (buttonMult / 2)).isActive = true
        addToCart.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor,
                                            constant: -(UIScreen.main.bounds.width * (buttonMult / 3))).isActive = true
        
        whiteCircle.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 1.09).isActive = true
        whiteCircle.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 1.09).isActive = true
        whiteCircle.centerXAnchor.constraint(equalTo: self.addToCart.centerXAnchor).isActive = true
        whiteCircle.centerYAnchor.constraint(equalTo: self.addToCart.centerYAnchor).isActive = true
        
        controllerImage.topAnchor.constraint(equalTo: self.addToCart.bottomAnchor,
                                             constant: UIScreen.main.bounds.width * (buttonMult / 2)).isActive = true
        controllerImage.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor,
                                                  constant: -(UIScreen.main.bounds.width * (buttonMult / 3))).isActive = true
        controllerImage.bottomAnchor.constraint(equalTo: self.titleLabel.topAnchor).isActive = true
        controllerImage.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.46).isActive = true
        
        bookmark.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * buttonMult).isActive = true
        bookmark.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * buttonMult).isActive = true
        bookmark.centerYAnchor.constraint(equalTo: self.upperView.bottomAnchor).isActive = true
        bookmark.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,
                                          constant: UIScreen.main.bounds.width * (buttonMult / 3)).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,
                                            constant: UIScreen.main.bounds.width * (buttonMult / 3)).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.bookmark.bottomAnchor,
                                        constant: UIScreen.main.bounds.width * (buttonMult / 3)).isActive = true
        
        blurbLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,
                                            constant: UIScreen.main.bounds.width * (buttonMult / 3)).isActive = true
        blurbLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor,
                                             constant: -(UIScreen.main.bounds.width * (buttonMult / 3))).isActive = true
        blurbLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor,
                                        constant: UIScreen.main.bounds.width * (buttonMult / 6)).isActive = true
        

        features.topAnchor.constraint(equalTo: blurbLabel.bottomAnchor, constant: 10).isActive = true
        features.leadingAnchor.constraint(equalTo: blurbLabel.leadingAnchor).isActive = true
        features.trailingAnchor.constraint(equalTo: blurbLabel.trailingAnchor).isActive = true
        features.bottomAnchor.constraint(equalTo: buyButton.topAnchor, constant: -10).isActive = true
        
        feature01.topAnchor.constraint(equalTo: features.topAnchor).isActive = true
        feature01.leadingAnchor.constraint(equalTo: features.leadingAnchor).isActive = true
        feature01.trailingAnchor.constraint(equalTo: features.centerXAnchor).isActive = true
        feature01.bottomAnchor.constraint(equalTo: features.centerYAnchor).isActive = true
        
        feature01Image.centerYAnchor.constraint(equalTo: feature01.centerYAnchor).isActive = true
        feature01Image.leadingAnchor.constraint(equalTo: feature01.leadingAnchor, constant: 5).isActive = true
        feature01Image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true
        feature01Image.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true

        feature01Title.lastBaselineAnchor.constraint(equalTo: feature01.centerYAnchor).isActive = true
        feature01Title.leadingAnchor.constraint(equalTo: feature01Image.trailingAnchor, constant: 13).isActive = true

        feature01Caption.topAnchor.constraint(equalTo: feature01.centerYAnchor, constant: 2).isActive = true
        feature01Caption.leadingAnchor.constraint(equalTo: feature01Image.trailingAnchor, constant: 13).isActive = true

        feature02.topAnchor.constraint(equalTo: features.centerYAnchor).isActive = true
        feature02.leadingAnchor.constraint(equalTo: features.leadingAnchor).isActive = true
        feature02.trailingAnchor.constraint(equalTo: features.centerXAnchor).isActive = true
        feature02.bottomAnchor.constraint(equalTo: features.bottomAnchor).isActive = true
        
        feature02Image.centerYAnchor.constraint(equalTo: feature02.centerYAnchor).isActive = true
        feature02Image.leadingAnchor.constraint(equalTo: feature02.leadingAnchor, constant: 5).isActive = true
        feature02Image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true
        feature02Image.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true
        
        feature02Title.lastBaselineAnchor.constraint(equalTo: feature02.centerYAnchor).isActive = true
        feature02Title.leadingAnchor.constraint(equalTo: feature02Image.trailingAnchor, constant: 13).isActive = true
        
        feature02Caption.topAnchor.constraint(equalTo: feature02.centerYAnchor, constant: 2).isActive = true
        feature02Caption.leadingAnchor.constraint(equalTo: feature02Image.trailingAnchor, constant: 13).isActive = true
        
        feature03.topAnchor.constraint(equalTo: features.topAnchor).isActive = true
        feature03.leadingAnchor.constraint(equalTo: features.centerXAnchor).isActive = true
        feature03.trailingAnchor.constraint(equalTo: features.trailingAnchor).isActive = true
        feature03.bottomAnchor.constraint(equalTo: features.centerYAnchor).isActive = true
        
        feature03Image.centerYAnchor.constraint(equalTo: feature03.centerYAnchor).isActive = true
        feature03Image.leadingAnchor.constraint(equalTo: feature03.leadingAnchor, constant: 5).isActive = true
        feature03Image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true
        feature03Image.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true
        
        feature03Title.lastBaselineAnchor.constraint(equalTo: feature03.centerYAnchor).isActive = true
        feature03Title.leadingAnchor.constraint(equalTo: feature03Image.trailingAnchor, constant: 13).isActive = true
        
        feature03Caption.topAnchor.constraint(equalTo: feature03.centerYAnchor, constant: 2).isActive = true
        feature03Caption.leadingAnchor.constraint(equalTo: feature03Image.trailingAnchor, constant: 13).isActive = true
        
        feature04.topAnchor.constraint(equalTo: features.centerYAnchor).isActive = true
        feature04.leadingAnchor.constraint(equalTo: features.centerXAnchor).isActive = true
        feature04.trailingAnchor.constraint(equalTo: features.trailingAnchor).isActive = true
        feature04.bottomAnchor.constraint(equalTo: features.bottomAnchor).isActive = true
        
        feature04Image.centerYAnchor.constraint(equalTo: feature04.centerYAnchor).isActive = true
        feature04Image.leadingAnchor.constraint(equalTo: feature04.leadingAnchor, constant: 5).isActive = true
        feature04Image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true
        feature04Image.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * (buttonMult / 1.5)).isActive = true
        
        feature04Title.lastBaselineAnchor.constraint(equalTo: feature04.centerYAnchor).isActive = true
        feature04Title.leadingAnchor.constraint(equalTo: feature04Image.trailingAnchor, constant: 13).isActive = true
        
        feature04Caption.topAnchor.constraint(equalTo: feature04.centerYAnchor, constant: 2).isActive = true
        feature04Caption.leadingAnchor.constraint(equalTo: feature04Image.trailingAnchor, constant: 13).isActive = true
        
        buyButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                          constant: -(UIScreen.main.bounds.width * buttonMult)).isActive = true
        buyButton.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.088).isActive = true
        buyButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.85).isActive = true
        buyButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        priceView.topAnchor.constraint(equalTo: buyButton.topAnchor).isActive = true
        priceView.bottomAnchor.constraint(equalTo: buyButton.bottomAnchor).isActive = true
        priceView.leadingAnchor.constraint(equalTo: buyButton.leadingAnchor, constant: 14).isActive = true
        priceView.widthAnchor.constraint(equalTo: buyButton.widthAnchor, multiplier: 0.3).isActive = true
        
        priceDollar.leadingAnchor.constraint(equalTo: priceView.leadingAnchor, constant: 10).isActive = true
        priceDollar.centerYAnchor.constraint(equalTo: priceView.centerYAnchor).isActive = true
        
        priceAmount.leadingAnchor.constraint(equalTo: priceDollar.trailingAnchor, constant: 3).isActive = true
        priceAmount.centerYAnchor.constraint(equalTo: priceView.centerYAnchor).isActive = true
        
        preOrderButton.topAnchor.constraint(equalTo: buyButton.topAnchor, constant: 14).isActive = true
        preOrderButton.bottomAnchor.constraint(equalTo: buyButton.bottomAnchor, constant: -14).isActive = true
        preOrderButton.trailingAnchor.constraint(equalTo: buyButton.trailingAnchor, constant: -14).isActive = true
        preOrderButton.widthAnchor.constraint(equalTo: buyButton.widthAnchor, multiplier: 0.5).isActive = true
        
        preOrderText.leadingAnchor.constraint(equalTo: preOrderButton.leadingAnchor, constant: 25).isActive = true
        preOrderText.centerYAnchor.constraint(equalTo: preOrderButton.centerYAnchor).isActive = true
        
        preOrderArrow.topAnchor.constraint(equalTo: buyButton.topAnchor, constant: 25).isActive = true
        preOrderArrow.bottomAnchor.constraint(equalTo: buyButton.bottomAnchor, constant: -25).isActive = true
        preOrderArrow.trailingAnchor.constraint(equalTo: buyButton.trailingAnchor, constant: -25).isActive = true
        preOrderArrow.widthAnchor.constraint(equalTo: preOrderButton.widthAnchor, multiplier: 0.30).isActive = true
        
        
    }
    
}

