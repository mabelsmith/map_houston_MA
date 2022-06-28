//
//  ViewController.swift
//  map_houston_MA
//
//  Created by Mabel Smith on 6/28/22.
//

// 1. import UIKit and MapKit
import UIKit
import MapKit

// 2. We need UIViewController and MKMapViewDelegate are inherited in from ViewController
class ViewController: UIViewController, MKMapViewDelegate {

// 3. Drag the MapKit onto the view controller from the image library
// 4. Ctrl + Click + Drag to connect the MapKit to the cde file
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad() // Do any additional setup after loading the view.
        
        // 5. Make the map show up
        self.mapView.delegate = self
        
        // 6. Set an initial location
        let sourceLocation = CLLocationCoordinate2D(latitude: 40.759011, longitude: -73.984472)
        // to add an addiitonal location pin, make a new variable just like you did for sourceLocation with a new set of latitude and longitude coordinates
        
        // 7. Add a map pin
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        // for an additional location, change the variable name sourceLocation to the new variable name
        
        //
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        
        // 8. Label the map pin
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "Times Square"
        
        if let location = sourcePlacemark.location {
            sourceAnnotation.coordinate = location.coordinate
        }
        
        // 7. Show region around your location of choice
        self.mapView.showAnnotations([sourceAnnotation], animated: true )                      }
        
    }
