//
//  ViewController.swift
//  basicWeatherApp
//
//  Created by Umithan  on 18.07.2022.
//

//WARNING: without sleep(2) the data didn't come as I expected. the array fills out with 1 item delay. probably it's because of my poor internet connection. dunno.

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var descriptio: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var wind: UILabel!

    
    
    @IBAction func didIstanbulButtonTapped(_ sender: UIButton) {
        label.text = "Istanbul"
        APICaller.callAPI(city: "istanbul")
        sleep(2)
        makeVisible()
        print(APICaller.fetchedWeather.count)
    }
    @IBAction func didRomeButtonTapped(_ sender: UIButton) {
        label.text = "Rome"
        APICaller.callAPI(city: "rome")
        sleep(2)
        makeVisible()
        print(APICaller.fetchedWeather.count)

    }
    @IBAction func didLondonButtonTapped(_ sender: UIButton) {
        label.text = "London"
        APICaller.callAPI(city: "london")
        sleep(2)
        makeVisible()
        print(APICaller.fetchedWeather.count)

    }
    
    func makeVisible() {
        descriptio.isHidden = false
        temperature.isHidden = false
        wind.isHidden = false
        descriptio.text = APICaller.fetchedWeather.last?.description
        temperature.text = APICaller.fetchedWeather.last?.temperature
        wind.text = APICaller.fetchedWeather.last?.wind
    }
    


}
