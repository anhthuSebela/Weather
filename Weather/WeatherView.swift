//
//  ContentView.swift
//  Weather
//

import SwiftUI

struct WeatherView: View {

  @ObservedObject var viewModel: WeatherViewModel

  var body: some View {
      ZStack {
          LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
              .edgesIgnoringSafeArea(.all)
        
          VStack {
            Text(viewModel.cityName)
              .font(.largeTitle)
              .padding()
            Text(viewModel.temperature)
              .font(.system(size: 70))
              .bold()
            Text(viewModel.weatherIcon)
              .font(.largeTitle)
              .padding()
            Text(viewModel.weatherDescription)
          }.onAppear(perform: viewModel.refresh)
      }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
  }
}
