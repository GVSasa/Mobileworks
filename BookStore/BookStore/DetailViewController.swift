//
//  ViewController.swift
//  BookStore
//
//  Created by user190373 on 3/5/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearlabel: UILabel!
    
    
    func configureView(){
        
        if let myBook = detailItem {
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionTextView.text = myBook.description
            yearlabel.text = myBook.year
        }
    }
    
    @IBAction func cancel(sender: AnyObject){
        dismiss(animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }


    var detailItem: Book?{
        didSet{
            //update the view
        }
        
    }
    
}


