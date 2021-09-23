//
//  ViewController.swift
//  ProyectoPrimerParcial
//
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var playerFondo = AVAudioPlayer()
    var playerAnimal = AVAudioPlayer()
        
    let urlFondo = Bundle.main.url(forResource: "fondo", withExtension: "wav")
    let urlGato = Bundle.main.url(forResource: "gatoo", withExtension: "mp3")
    let urlPerro = Bundle.main.url(forResource: "perroo", withExtension: "mp3")
    let urlVaca = Bundle.main.url(forResource: "vacaa", withExtension: "mp3")
    
    let animacionGato1 = [
        UIImage(named: "gato1_1")!,
        UIImage(named: "gato1_2")!,
        UIImage(named: "gato1_3")!,
        UIImage(named: "gato1_4")!,
        UIImage(named: "gato1_5")!
    ]
    let animacionGato2 = [
        UIImage(named: "gato2_1")!,
        UIImage(named: "gato2_2")!,
        UIImage(named: "gato2_3")!,
        UIImage(named: "gato2_4")!,
        UIImage(named: "gato2_5")!
    ]
    let animacionPerro1 = [
        UIImage(named: "perro1_1")!,
        UIImage(named: "perro1_2")!,
        UIImage(named: "perro1_3")!,
        UIImage(named: "perro1_4")!,
        UIImage(named: "perro1_5")!
    ]
    let animacionPerro2 = [
        UIImage(named: "perro2_1")!,
        UIImage(named: "perro2_2")!,
        UIImage(named: "perro2_3")!,
        UIImage(named: "perro2_4")!,
        UIImage(named: "perro2_5")!
    ]
    let animacionVaca1 = [
        UIImage(named: "vaca1_1")!,
        UIImage(named: "vaca1_2")!,
        UIImage(named: "vaca1_3")!,
        UIImage(named: "vaca1_4")!,
        UIImage(named: "vaca1_5")!
    ]
    let animacionVaca2 = [
        UIImage(named: "vaca2_1")!,
        UIImage(named: "vaca2_2")!,
        UIImage(named: "vaca2_3")!,
        UIImage(named: "vaca2_4")!,
        UIImage(named: "vaca2_5")!
    ]

    @IBOutlet weak var lblAnimal: UILabel!
    
    @IBOutlet weak var imgPrevista: UIImageView!
    @IBOutlet weak var imgGato: UIImageView!
    @IBOutlet weak var imgPerro: UIImageView!
    @IBOutlet weak var imgVaca: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            playerFondo = try AVAudioPlayer(contentsOf: urlFondo!, fileTypeHint: AVFileType.wav.rawValue)
            playerFondo.numberOfLoops = -1
            playerFondo.volume = 0.2
            playerFondo.play()
        } catch let error {
                print(error.localizedDescription)
        }
        
        imgGato.animationImages = animacionGato1
        imgGato.animationDuration = 0.7
        imgGato.startAnimating()
        imgPerro.animationImages = animacionPerro1
        imgPerro.animationDuration = 0.7
        imgPerro.startAnimating()
        imgVaca.animationImages = animacionVaca1
        imgVaca.animationDuration = 0.7
        imgVaca.startAnimating()
    }

    @IBAction func doTapGato(_ sender: Any) {
        lblAnimal.text = "Cat"
        imgPrevista.animationImages = animacionGato2
        imgPrevista.animationDuration = 0.6
        imgPrevista.startAnimating()
        do {
            playerAnimal = try AVAudioPlayer(contentsOf: urlGato!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        } catch let error {
                    print(error.localizedDescription)
        }
    }
    
    @IBAction func doTapPerro(_ sender: Any) {
        lblAnimal.text = "Dog"
        imgPrevista.animationImages = animacionPerro2
        imgPrevista.animationDuration = 0.6
        imgPrevista.startAnimating()
        do {
            playerAnimal = try AVAudioPlayer(contentsOf: urlPerro!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        } catch let error {
                    print(error.localizedDescription)
        }
    }
    @IBAction func doTapVaca(_ sender: Any) {
        lblAnimal.text = "Cow"
        imgPrevista.animationImages = animacionVaca2
        imgPrevista.animationDuration = 0.6
        imgPrevista.startAnimating()
        do {
            playerAnimal = try AVAudioPlayer(contentsOf: urlVaca!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        } catch let error {
                    print(error.localizedDescription)
        }
    }
    
}

