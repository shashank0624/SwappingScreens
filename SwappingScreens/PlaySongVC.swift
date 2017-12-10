//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Girish Sami on 12/9/17.
//  Copyright © 2017 PR. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong:String{
        get{
            return _selectedSong
        }set{
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong
    }
    

}
