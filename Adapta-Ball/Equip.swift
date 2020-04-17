//
//  Equip.swift
//  Adapta-Ball
//
//  Created by Anusha Kankipati on 4/13/20.
//  Copyright © 2020 sea urchins. All rights reserved.
//

import UIKit

class Equip: UIViewController {

    @IBAction func spotifybutton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/playlist/7f8ZK1MBoYfphCAoMFkTt1?si=zclxabklSnu5nrcxFB3HFQ")! as URL, options: [:], completionHandler: nil)
    }
    @IBOutlet weak var SpotifyPlaylistLabel: UILabel!
    @IBAction func PrevPageButtom(_ sender: Any) {
    }
    @IBAction func NoBall(_ sender: Any) {
    }
    @IBAction func YesBall(_ sender: Any) {
    }
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
