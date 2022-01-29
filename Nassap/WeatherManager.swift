//
//  WeatherManager.swift
//  Nassap
//
//  Created by GiselaCamacho on 28/01/22.
//

import Foundation
struct WeatherManager {
    let climaUrl = "https://api.nasa.gov/planetary/apod?api_key=vSzasUGIBx0Y5AkvqtGmhvsdmqMfLnUeLjHMSf5u"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(climaUrl)&date=\(cityName)"
       perfomRequest(urlString: urlString)
    }
    
    
    
    
    func perfomRequest(urlString: String) {
        // Hacemos los 4 pasos
        
        //1.Crear un URL
        if let url = URL(string: urlString) {
            //2. Create a URLSession
            
            let session = URLSession(configuration: .default)
            //3. Darle la session una tarea
            let task = session.dataTask(with: url) {(data, response, error)
                in
                if error != nil{
                    print(error)
                    return
                }
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                  
                }
                
            }
            //4. empezar la tarea
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.explanation)
            print(decodedData.date)
            print(decodedData.title)
            
            
        } catch {
            print(error)
        }
    }
   
  
    
}
