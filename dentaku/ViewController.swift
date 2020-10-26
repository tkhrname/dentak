//
//  ViewController.swift
//  dentaku
//
//  Created by 渡邊 丈洋 on 2020/07/02.
//  Copyright © 2020 tkhrname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!

    var text: String = "0"
    var base: String = ""
    var calculateKind: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayLabel.text = text
    }

    @IBAction func button0Tapped(_ sender: UIButton) {
        self.addNumber(value: "0")
    }

    @IBAction func button00Tapped(_ sender: UIButton) {
        self.addNumber(value: "00")
    }

    @IBAction func button1Tapped(_ sender: UIButton) {
        self.addNumber(value: "1")
    }

    @IBAction func button2Tapped(_ sender: UIButton) {
        self.addNumber(value: "2")
    }

    @IBAction func button3Tapped(_ sender: UIButton) {
        self.addNumber(value: "3")
    }

    @IBAction func button4Tapped(_ sender: UIButton) {
        self.addNumber(value: "4")
    }

    @IBAction func button5Tapped(_ sender: UIButton) {
        self.addNumber(value: "5")
    }

    @IBAction func button6Tapped(_ sender: UIButton) {
        self.addNumber(value: "6")
    }

    @IBAction func button7Tapped(_ sender: UIButton) {
        self.addNumber(value: "7")
    }

    @IBAction func button8Tapped(_ sender: UIButton) {
        self.addNumber(value: "8")
    }

    @IBAction func button9Tapped(_ sender: UIButton) {
        self.addNumber(value: "9")
    }

    @IBAction func buttonPlusTapped(_ sender: UIButton) {
        self.functionButtonTapped(kind: "+")
//        if self.base.isEmpty {
//            self.base = self.text
//        }
//        self.text = "0"
//        self.displayLabel.text = "+"
//        self.calculateKind = "+"
    }

    @IBAction func buttonMinusTapped(_ sender: UIButton) {
        self.functionButtonTapped(kind: "-")
    }

    @IBAction func buttonMultiTapped(_ sender: UIButton) {
        self.functionButtonTapped(kind: "×")
    }

    @IBAction func buttonDivideTapped(_ sender: UIButton) {
        self.functionButtonTapped(kind: "÷")
    }

    @IBAction func buttonEqualTapped(_ sender: UIButton) {
        if let baseNum = Int(self.base), let textNum = Int(self.text) {
            var result = ""
            if self.calculateKind == "+" {
                result = "\(baseNum + textNum)"
            } else if self.calculateKind == "-" {
                result = "\(baseNum - textNum)"
            } else if self.calculateKind == "×" {
                result = "\(baseNum * textNum)"
            } else if self.calculateKind == "÷" {
                result = "\(Float(baseNum) / Float(textNum))"
            }
            self.displayLabel.text = "\(result)"
            self.text = "0"
            self.base = ""
        }
    }

    @IBAction func buttonFloatTapped(_ sender: UIButton) {
    }

    @IBAction func buttonPlusMinusTapped(_ sender: UIButton) {
    }

    @IBAction func buttonTaxTapped(_ sender: UIButton) {
    }

    @IBAction func buttonCATapped(_ sender: UIButton) {
        self.text = "0"
        self.displayLabel.text = self.text
    }

    private func addNumber(value: String) {
        let newText = text + value
        if let number = Int(newText) {
            self.text = "\(number)"
            self.displayLabel.text = self.text
        }
    }

    private func functionButtonTapped(kind: String) {
        if self.base.isEmpty {
            self.base = self.text
        }
        self.text = "0"
        self.displayLabel.text = kind
        self.calculateKind = kind
    }

}

