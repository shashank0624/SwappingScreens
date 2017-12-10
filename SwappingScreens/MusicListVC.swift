//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Girish Sami on 12/9/17.
//  Copyright © 2017 PR. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: UIButton) {
        let songTitle = "Lag Ja Gale ki dil abhi bhara nhi"
        performSegue(withIdentifier: "MusicListToPlaySong", sender: songTitle)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MusicListToPlaySong"{
            if let destination = segue.destination as? PlaySongVC{
                if let song = sender as? String{
                    destination.selectedSong = song
                }
                
            }
        }
        
      
        
    }
    

}
