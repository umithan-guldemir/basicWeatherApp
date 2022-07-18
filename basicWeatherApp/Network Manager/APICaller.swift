//
//  APICaller.swift
//  basicWeatherApp
//
//  Created by Umithan  on 18.07.2022.
//

import Foundation


class APICaller {
    
    static var fetchedWeather = [Weather]()
    static func callAPI(city: String){
        guard let url = URL(string: "https://goweather.herokuapp.com/weather/\(city)") else { return }

        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            
            let decoder = JSONDecoder()

            if let data = data {
                do{
                    let weather = try decoder.decode(Weather.self, from: data)
                    
                    APICaller.fetchedWeather.append(weather)

                    print(weather.temperature!)
                    print(weather.description!)
                }catch{
                    print(error)
                }
            }
        }
        task.resume()
    }
}

