//
//  fotoDelDia.swift
//  Nassap
//
//  Created by Marco Cruz Velázquez on 1/27/22.
//

import Foundation


struct fotoDelDia : Decodable {
    
    var copyright : String
    var date : String           // 2021-01-27
    var explanation : String
    var title : String
    var image : String
    
}

// pregunta 1 : cuando usar el decodable // si , lo vamos a usar de preferencia siempre .
// pregunta 2: image sera string?

/*
copyright": "Petr Horalek",
    "date": "2021-01-01",
    "explanation": "The South Celestial Pole is easy to spot in star trail images of the southern sky. The extension of Earth's axis of rotation to the south, it's at the c
          Analog to Polaris the north pole star, Sigma Octantis is little over one degree fom the the South Celestial pole.",
     "hdurl": "https://apod.nasa.gov/apod/image/2101/2020_12_16_Kujal_Jizni_Pol_1500px-3.png",
     "media_type": "image",
     "service_version": "v1",
     "title": "Galaxies and the South Celestial Pole",
     "url": "https://apod.nasa.gov/apod/image/2101/2020_12_16_Kujal_Jizni_Pol_1500px-3.jpg"
*/
