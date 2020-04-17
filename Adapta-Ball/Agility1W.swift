//
//  Agility1W.swift
//  Adapta-Ball
//
//  Created by Anusha Kankipati on 4/14/20.
//  Copyright © 2020 sea urchins. All rights reserved.
//

import UIKit
import AVFoundation
class Agility1W: UIViewController {
    var seconds = 45
    var timer = Timer()
    var isTimerRunning = false
    var audioPlayer = AVAudioPlayer()
    
    @IBAction func DescriptionButton(_ sender: Any) {
    }
    @IBAction func BackButton(_ sender: Any) {
    }
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelTime: UILabel!
    
    @IBOutlet weak var workoutListAgility: UITextView!
    
    @IBOutlet weak var numberOfTimesLabel: UILabel!
    @IBOutlet weak var agilityWorkTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do{
            let audioPath = Bundle.main.path(forResource: "sound", ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch{
            //error
        }
    }
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(BallHandling.counter), userInfo: nil, repeats: true)
        isTimerRunning = true;
    }
    
    @objc func counter(){
        seconds -= 1
        labelTime.text = timeString(time: TimeInterval(seconds))
        slider.value = Float(seconds)
        if(seconds == 0){
            timer.invalidate()
            audioPlayer.play()
        }
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        seconds = Int(sender.value)
        labelTime.text = String(seconds)
    }
    
    @IBAction func start(_ sender: Any) {
        if(isTimerRunning == false){
            runTimer()
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
        seconds = 45
        slider.setValue(45, animated: true)
        labelTime.text = "00:00:45"
        isTimerRunning = false
        audioPlayer.stop()
    }
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    
    @IBAction func spotifyButton(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://open.spotify.com/playlist/7f8ZK1MBoYfphCAoMFkTt1?si=zclxabklSnu5nrcxFB3HFQ")! as URL, options: [:], completionHandler: nil)
    }
    
}
