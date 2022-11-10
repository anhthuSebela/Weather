//
//  WeatherApp.swift
//  Weather
//

import SwiftUI

@main
struct WeatherApp: App {
  var body: some Scene {
    WindowGroup {
        let weatherService = WeatherService()
        let viewModel = WeatherViewModel(weatherService: weatherService)
        WeatherView(viewModel: viewModel)
    }
  }
}
