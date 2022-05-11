//
//  ViewController.swift
//  wordle
//
//  Created by Mikey Mauricio on 4/21/22.
//

import UIKit
import Foundation


 
//if you get access to the directory

 

class ViewController: UIViewController {
    @IBOutlet var testLabel: UILabel!
   
    @IBOutlet var viewController: UIView!
    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet var userInput: UITextField!
    @IBOutlet var TextView: UITextView!
    
    var words = getWords()
    var word = ""
    func getWord(wordList: Array<String>) {
        word = wordList.randomElement()!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getWord(wordList: words)
        TextView.text = word
        
       
       
    }


}

