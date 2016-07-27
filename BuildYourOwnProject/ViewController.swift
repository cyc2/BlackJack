//
//  ViewController.swift
//  BuildYourOwnProject
//
//  Created by Chris on 7/22/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DealerLabel: UILabel!
    @IBOutlet weak var PlayerLabel: UILabel!
    @IBOutlet weak var dealButton: UIButton!
    @IBOutlet weak var PlayerTotalLabel: UILabel!
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var standButton: UIButton!
    @IBOutlet weak var DealerTotalLabel: UILabel!
    @IBOutlet weak var BetTotalLabel: UILabel!
    @IBOutlet weak var TotalChipsLabel: UILabel!
    @IBOutlet weak var increaseBetButton: UIButton!
    @IBOutlet weak var decreaseBetButton: UIButton!
    @IBOutlet weak var firstPlayerCardImage: UIImageView!
    @IBOutlet weak var secondPlayerCardImage: UIImageView!
    @IBOutlet weak var thirdPlayerCardImage: UIImageView!
    @IBOutlet weak var fourthPlayerCardImage: UIImageView!
    @IBOutlet weak var fifthPlayerCardImage: UIImageView!
    @IBOutlet weak var sixthPlayerCardImage: UIImageView!
    @IBOutlet weak var firstDealerCardImage: UIImageView!
    @IBOutlet weak var secondDealerCardImage: UIImageView!
    @IBOutlet weak var thirdDealerCardImage: UIImageView!
    @IBOutlet weak var fourthDealerCardImage: UIImageView!
    @IBOutlet weak var fifthDealerCardImage: UIImageView!
    @IBOutlet weak var sixthDealerCardImage: UIImageView!
    
    
    
    let cardArray = [11, 11, 11, 11, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
    
    var name = ""
    
    var dCard1 = 0
    var dCard2 = 0
    var dCard3 = 0
    var dCard4 = 0
    var dCard5 = 0
    var dCard6 = 0
    var pCard1 = 0
    var pCard2 = 0
    var pCard3 = 0
    var pCard4 = 0
    var pCard5 = 0
    var pCard6 = 0
    
    var dCard1Image = ""
    var dCard2Image = ""
    var dCard3Image = ""
    var dCard4Image = ""
    var dCard5Image = ""
    var dCard6Image = ""
    var pCard1Image = ""
    var pCard2Image = ""
    var pCard3Image = ""
    var pCard4Image = ""
    var pCard5Image = ""
    var pCard6Image = ""
    
    var timesHit = 0
    var ace = false
    
    var dealerInitial = 0
    var dealerSecond = 0
    var dealerThird = 0
    var dealerFourth = 0
    var dealerFifth = 0
    var dealerCurrentTotal = 0
    
    var playerInitial = 0
    var playerSecond = 0
    var playerThird = 0
    var playerFourth = 0
    var playerFifth = 0
    var playerCurrentTotal = 0
    
    var playerChips = 100
    var playerBet = 1
    var playerChipsDuringHand = 100
    var playerWin = false
    var wasPush = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BetTotalLabel.text = ("1")
        
        if name == "Cheat" {
            playerChips = 500
            TotalChipsLabel.text = "500"
        }
        hitButton.enabled = false
        standButton.enabled = false
        
        if name == "" {
            playerChips = 10000
            TotalChipsLabel.text = "10000"
        }
        
    }
    
    @IBAction func onTappedReduceBetButton(sender: AnyObject) {
        playerBet -= 1
        if playerBet == 0 {
            playerBet = 1
        }
        playerChipsDuringHand = playerChips - playerBet
        BetTotalLabel.text = String(playerBet)
        TotalChipsLabel.text = String(playerChipsDuringHand)
    }
    @IBAction func onTappedIncreaseBetButton(sender: AnyObject) {
        playerBet += 1
        if playerBet > playerChips {
            playerBet = playerChips
        }
        playerChipsDuringHand = playerChips - playerBet
        BetTotalLabel.text = String(playerBet)
        TotalChipsLabel.text = String(playerChipsDuringHand)
    }
    
    func drawCards() {
        
        let cardDraw = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw2 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw3 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw4 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw5 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw6 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw7 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw8 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw9 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw10 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw11 = Int(arc4random_uniform(UInt32(cardArray.count)))
        let cardDraw12 = Int(arc4random_uniform(UInt32(cardArray.count)))
        
        dCard1Image = String(format: "card%i", cardDraw + 1)
        dCard2Image = String(format: "card%i", cardDraw2 + 1)
        dCard3Image = String(format: "card%i", cardDraw3 + 1)
        dCard4Image = String(format: "card%i", cardDraw4 + 1)
        dCard5Image = String(format: "card%i", cardDraw5 + 1)
        dCard6Image = String(format: "card%i", cardDraw6 + 1)
        
        pCard1Image = String(format: "card%i", cardDraw7 + 1)
        pCard2Image = String(format: "card%i", cardDraw8 + 1)
        pCard3Image = String(format: "card%i", cardDraw9 + 1)
        pCard4Image = String(format: "card%i", cardDraw10 + 1)
        pCard5Image = String(format: "card%i", cardDraw11 + 1)
        pCard6Image = String(format: "card%i", cardDraw12 + 1)
        
        dCard1 = cardArray[cardDraw]
        dCard2 = cardArray[cardDraw2]
        dCard3 = cardArray[cardDraw3]
        dCard4 = cardArray[cardDraw4]
        dCard5 = cardArray[cardDraw5]
        dCard6 = cardArray[cardDraw6]
        
        pCard1 = cardArray[cardDraw7]
        pCard2 = cardArray[cardDraw8]
        pCard3 = cardArray[cardDraw9]
        pCard4 = cardArray[cardDraw10]
        pCard5 = cardArray[cardDraw11]
        pCard6 = cardArray[cardDraw12]
        
        dealerInitial = dCard1 + dCard2
        dealerSecond = dCard1 + dCard2 + dCard3
        dealerThird = dCard1 + dCard2 + dCard3 + dCard4
        dealerFourth = dCard1 + dCard2 + dCard3 + dCard4 + dCard5
        dealerFifth = dCard1 + dCard2 + dCard3 + dCard4 + dCard5 + dCard6
        
        
        playerInitial = pCard1 + pCard2
        playerSecond = pCard1 + pCard2 + pCard3
        playerThird = pCard1 + pCard2 + pCard3 + pCard4
        playerFourth = pCard1 + pCard2 + pCard3 + pCard4 + pCard5
        playerFifth = pCard1 + pCard2 + pCard3 + pCard4 + pCard5 + pCard6
        
    }
    
    @IBAction func onTappedDealButton(sender: AnyObject) {
        clearImages()
        
        drawCards()
        if playerChips < 1 {
            playerChips = 100
        }
        self.firstPlayerCardImage.image = UIImage(named: pCard1Image)
        self.secondPlayerCardImage.image = UIImage(named: pCard2Image)
        self.secondDealerCardImage.image = UIImage(named: dCard2Image)
        self.firstDealerCardImage.image = UIImage(named: "card53")
        TotalChipsLabel.text = String(playerChips)
        PlayerTotalLabel.text = String(playerInitial)
        DealerTotalLabel.text = ("?")
        increaseBetButton.enabled = false
        decreaseBetButton.enabled = false
        hitButton.enabled = true
        standButton.enabled = true
        aceChecker()
        DealerLabel.text = ("? \(dCard2)")
        PlayerLabel.text = ("\(pCard1) \(pCard2)")
        dealButton.enabled = false
        dealerCurrentTotal = dealerInitial
        playerCurrentTotal = pCard1 + pCard2
        
        if pCard1 == 11 && pCard2 == 10 {
            hitButton.enabled = false
            standButton.enabled = false
            checkForWin()
        }
        
        if pCard1 == 10 && pCard2 == 11 {
            hitButton.enabled = false
            standButton.enabled = false
            checkForWin()
        }
        
        if dCard1 == 11 && dCard2 == 10 {
            hitButton.enabled = false
            standButton.enabled = false
            self.firstDealerCardImage.image = UIImage(named: dCard1Image)
            checkForWin()
        }
        
        if dCard1 == 10 && dCard2 == 11 {
            hitButton.enabled = false
            standButton.enabled = false
            self.firstDealerCardImage.image = UIImage(named: dCard1Image)
            checkForWin()
            
        }
    }
    
    @IBAction func onTappedHitButton(sender: AnyObject) {
        
        switch timesHit {
        case 0 :
            playerCurrentTotal = pCard1 + pCard2 + pCard3
            
            self.thirdPlayerCardImage.image = UIImage(named: pCard3Image)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3)")
            
            if ace == true {
                PlayerTotalLabel.text = String(playerCurrentTotal)
            } else {
                PlayerTotalLabel.text = String(playerSecond)
            }
            
            timesHit += 1
            
            aceChecker()
            
            playerCurrentTotal = pCard1 + pCard2 + pCard3
            
            PlayerTotalLabel.text = String(playerCurrentTotal)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3)")
            
            bustChecker()
            
        case 1 :
            playerCurrentTotal = pCard1 + pCard2 + pCard3 + pCard4
            
            self.fourthPlayerCardImage.image = UIImage(named: pCard4Image)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3) \(pCard4)")
            
            if ace == true {
                PlayerTotalLabel.text = String(playerCurrentTotal)
            } else {
                PlayerTotalLabel.text = String(playerThird)
            }
            
            
            timesHit += 1
            
            aceChecker()
            
            playerCurrentTotal = pCard1 + pCard2 + pCard3 + pCard4
            
            PlayerTotalLabel.text = String(playerCurrentTotal)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3) \(pCard4)")
            
            bustChecker()
            
        case 2 :
            playerCurrentTotal = pCard1 + pCard2 + pCard3 + pCard4 + pCard5
            
            self.fifthPlayerCardImage.image = UIImage(named: pCard5Image)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3) \(pCard4) \(pCard5)")
            
            if ace == true {
                PlayerTotalLabel.text = String(playerCurrentTotal)
            } else {
                PlayerTotalLabel.text = String(playerFourth)
            }
            
            timesHit += 1
            
            aceChecker()
            
            playerCurrentTotal = pCard1 + pCard2 + pCard3 + pCard4 + pCard5
            
            PlayerTotalLabel.text = String(playerCurrentTotal)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3) \(pCard4) \(pCard5)")
            
            bustChecker()
            
        case 3 :
            
            playerCurrentTotal = pCard1 + pCard2 + pCard3 + pCard4 + pCard5 + pCard6
            
            self.sixthPlayerCardImage.image = UIImage(named: pCard6Image)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3) \(pCard4) \(pCard5) \(pCard6)")
            
            if ace == true {
                PlayerTotalLabel.text = String(playerCurrentTotal)
            } else {
                PlayerTotalLabel.text = String(playerFifth)
            }
            
            timesHit += 1
            
            aceChecker()
            
            playerCurrentTotal = pCard1 + pCard2 + pCard3 + pCard4 + pCard5 + pCard6
            
            PlayerTotalLabel.text = String(playerCurrentTotal)
            
            PlayerLabel.text = ("\(pCard1) \(pCard2) \(pCard3) \(pCard4) \(pCard5) \(pCard6)")
            
            bustChecker()
            
        default :
            print("no way")
        }
        
        
        
    }
    
    @IBAction func onTappedStandButton(sender: AnyObject) {
        dealersTurn()
    }
    
    func dealersTurn() {
        dealerCurrentTotal = dealerInitial
        dealerAceChecker()
        
        hitButton.enabled = false
        standButton.enabled = false
        
        self.firstDealerCardImage.image = UIImage(named: dCard1Image)
        DealerLabel.text = ("\(dCard1) \(dCard2)")
        
        if dealerInitial < 17 {
            dealerCurrentTotal = dCard1 + dCard2 + dCard3
            DealerTotalLabel.text = String(dealerCurrentTotal)
            self.firstDealerCardImage.image = UIImage(named: dCard1Image)
            self.thirdDealerCardImage.image = UIImage(named: dCard3Image)
            dealerAceChecker()
            DealerLabel.text = ("\(dCard1) \(dCard2) \(dCard3)")
        }
        
        if dealerCurrentTotal < 17 {
            dealerCurrentTotal = dCard1 + dCard2 + dCard3 + dCard4
            DealerTotalLabel.text = String(dealerCurrentTotal)
            self.fourthDealerCardImage.image = UIImage(named: dCard4Image)
            dealerAceChecker()
            DealerLabel.text = ("\(dCard1) \(dCard2) \(dCard3) \(dCard4)")
        }
        
        if dealerCurrentTotal < 17 {
            dealerCurrentTotal = dCard1 + dCard2 + dCard3 + dCard4 + dCard5
            self.fifthDealerCardImage.image = UIImage(named: dCard5Image)
            DealerTotalLabel.text = String(dealerCurrentTotal)
            dealerAceChecker()
            DealerLabel.text = ("\(dCard1) \(dCard2) \(dCard3) \(dCard4) \(dCard5)")
        }
        if dealerCurrentTotal < 17 {
            dealerCurrentTotal = dCard1 + dCard2 + dCard3 + dCard4 + dCard5 + dCard6
            DealerTotalLabel.text = String(dealerCurrentTotal)
            self.sixthDealerCardImage.image = UIImage(named: dCard6Image)
            dealerAceChecker()
            DealerLabel.text = ("\(dCard1) \(dCard2) \(dCard3) \(dCard4) \(dCard5) \(dCard6)")
        }
        
        checkForWin()
        dealButton.enabled = true
        timesHit = 0
    }
    
    func playerBusted() {
        bettingChips()
        DealerLabel.text = ("\(dCard1) \(dCard2)")
        DealerTotalLabel.text = String(dealerCurrentTotal)
        self.firstDealerCardImage.image = UIImage(named: dCard1Image)
        hitButton.enabled = false
        standButton.enabled = false
        dealButton.enabled = true
        timesHit = 0
        
    }
    
    func checkForWin() {
        if playerCurrentTotal == dealerCurrentTotal {
            PlayerTotalLabel.text = ("Push")
            wasPush = true
        }
        if playerCurrentTotal > dealerCurrentTotal && playerCurrentTotal <= 21 {
            PlayerTotalLabel.text = ("You win $\(playerBet)!")
            playerWin = true
        }
        if playerCurrentTotal < dealerCurrentTotal && dealerCurrentTotal <= 21 {
            PlayerTotalLabel.text = ("You lose $\(playerBet)!")
        }
        if playerCurrentTotal > dealerCurrentTotal && playerCurrentTotal > 21 && dealerCurrentTotal < 22 {
            PlayerTotalLabel.text = ("You lose $\(playerBet)!")
        }
        if playerCurrentTotal < dealerCurrentTotal && playerCurrentTotal < 22 && dealerCurrentTotal > 21 {
            PlayerTotalLabel.text = ("You win $\(playerBet)!")
            playerWin = true
        }
        if playerInitial == 21 && dealerInitial != 21 {
            PlayerTotalLabel.text = ("Blackjack pays 3/2 \(playerBet * 3/2)!")
            playerWin = true
        }
        if playerInitial != 21 && dealerInitial == 21 {
            PlayerTotalLabel.text = ("You lose $\(playerBet)!")
        }
        if playerInitial == 21 && dealerInitial == 21 {
            PlayerTotalLabel.text = ("Push")
            wasPush = true
        }
        DealerTotalLabel.text = String(dealerCurrentTotal)
        self.firstDealerCardImage.image = UIImage(named: dCard1Image)
        bettingChips()
    }
    
    func bettingChips() {
        TotalChipsLabel.text = String(playerChipsDuringHand)
        
        if wasPush == true {
        }
        if playerWin == true {
            if playerInitial == 21 {
                playerChips = playerChips + (playerBet * 3 / 2)
            }
            playerChips = playerChips + playerBet
        } else {
            playerChips = playerChips - playerBet
        }
        
        ace = false
        playerWin = false
        wasPush = false
        TotalChipsLabel.text = String(playerChips)
        increaseBetButton.enabled = true
        decreaseBetButton.enabled = true
        hitButton.enabled = false
        standButton.enabled = false
        dealButton.enabled = true
    }
    
    func aceChecker() {
        if Int(PlayerTotalLabel.text!) > 21 {
            if pCard1 == 11 || pCard2 == 11 {
                playerCurrentTotal = playerCurrentTotal - 10
            }
        }
        if pCard1 == 11 && pCard3 == 11 || pCard2 == 11 && pCard3 == 11 {
            playerCurrentTotal = playerCurrentTotal - 20
        }
        if pCard1 + pCard2 + pCard3 > 21 && pCard1 + pCard2 != 21 && timesHit != 0 {
            if pCard1 == 11 || pCard2 == 11 || pCard3 == 11 {
                if pCard1 == 11 {
                    pCard1 = 1
                }
                if pCard2 == 11 {
                    pCard2 = 1
                }
                if pCard3 == 11 {
                    pCard3 = 1
                }
            }
        }
        if pCard1 + pCard2 + pCard3 < 21 && timesHit == 0 {
            if pCard1 == 11 || pCard2 == 11 || pCard3 == 11 {
                if pCard1 == 11 {
                    pCard1 = 11
                }
                if pCard2 == 11 {
                    pCard2 = 11
                }
                if pCard3 == 11 {
                    pCard3 = 11
                }
            }
        }
        if playerCurrentTotal > 21 && (pCard1 == 11 || pCard2 == 11 || pCard3 == 11 || pCard4 == 11 || pCard5 == 11){
            if pCard1 == 11 {
                pCard1 = 1
            }
            if pCard2 == 11 {
                pCard2 = 1
            }
            if pCard3 == 11 {
                pCard3 = 1
            }
            if pCard4 == 11 {
                pCard4 = 1
            }
            if pCard5 == 11 {
                pCard5 = 1
            }
            PlayerTotalLabel.text = String(playerCurrentTotal)
            ace = true
        }
    }
    func bustChecker() {
        if playerCurrentTotal > 21 {
            PlayerTotalLabel.text = ("You bust \(playerCurrentTotal)")
            hitButton.enabled = false
            DealerLabel.text = ("\(dCard1) \(dCard2)")
            self.firstDealerCardImage.image = UIImage(named: dCard1Image)
            playerBusted()
        }
    }
    
    func clearImages() {
        self.firstPlayerCardImage.image = nil
        self.secondPlayerCardImage.image = nil
        self.thirdPlayerCardImage.image = nil
        self.fourthPlayerCardImage.image = nil
        self.fifthPlayerCardImage.image = nil
        self.sixthPlayerCardImage.image = nil
        
        self.firstDealerCardImage.image = nil
        self.secondDealerCardImage.image = nil
        self.thirdDealerCardImage.image = nil
        self.fourthDealerCardImage.image = nil
        self.fifthDealerCardImage.image = nil
        self.sixthDealerCardImage.image = nil
    }
    
    func dealerAceChecker() {
        if dealerCurrentTotal > 21 {
            if dCard1 == 11 && dCard2 == 11 {
                dealerCurrentTotal = dealerCurrentTotal - 10
            }
        }
        if dCard1 == 11 && dCard3 == 11 || dCard2 == 11 && dCard3 == 11 {
            dealerCurrentTotal = dealerCurrentTotal - 20
        }
        if dCard1 + dCard2 + dCard3 > 21 && dCard1 + dCard2 != 21{
            if dCard1 == 11 || dCard2 == 11 || dCard3 == 11 {
                if dCard1 == 11 {
                    dCard1 = 1
                }
                if dCard2 == 11 {
                    dCard2 = 1
                }
                if dCard3 == 11 {
                    dCard3 = 1
                }
            }
        }
        if dCard1 + dCard2 + dCard3 < 21{
            if dCard1 == 11 || dCard2 == 11 || dCard3 == 11 {
                if dCard1 == 11 {
                    dCard1 = 11
                }
                if dCard2 == 11 {
                    dCard2 = 11
                }
                if dCard3 == 11 {
                    dCard3 = 11
                }
            }
        }
        if dealerCurrentTotal > 21 && (dCard1 == 11 || dCard2 == 11 || dCard3 == 11 || dCard4 == 11 || dCard5 == 11){
            if dCard1 == 11 {
                dCard1 = 1
            }
            if dCard2 == 11 {
                dCard2 = 1
            }
            if dCard3 == 11 {
                dCard3 = 1
            }
            if dCard4 == 11 {
                dCard4 = 1
            }
            if dCard5 == 11 {
                dCard5 = 1
            }
            DealerTotalLabel.text = String(dealerCurrentTotal)
        }
    }
    
}

