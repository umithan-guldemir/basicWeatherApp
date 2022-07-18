//
//  Weather.swift
//  basicWeatherApp
//
//  Created by Umithan  on 18.07.2022.
//

import Foundation

struct Weather: Codable {
    let temperature: String?
    let wind: String?
    let description: String?
    let forecast: Forecast?
}

struct Forecast: Codable {
    let day: String?
    let temperature: String?
    let wind: String?
}
