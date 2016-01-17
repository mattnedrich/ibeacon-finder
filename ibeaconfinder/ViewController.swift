import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
   
    /* The proximity UUID of your iBeacon is initially set by the manufacturer, and can usually be found in documentation they provide.
    The proximity UUID used in this example is for this iBeacon: http://amzn.com/B00O2UDZU6 */
    let IBEACON_PROXIMITY_UUID = "74278BDA-B644-4520-8F0C-720EAF059935"
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }

    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if !(status == .AuthorizedAlways || status == .AuthorizedWhenInUse) {
            print("Must allow location access for this application to work")
        } else {
            if let uuid = NSUUID(UUIDString: IBEACON_PROXIMITY_UUID) {
                let beaconRegion = CLBeaconRegion(proximityUUID: uuid, identifier: "iBeacon")
                startMonitoring(beaconRegion)
                startRanging(beaconRegion)
            }
        }
    }
    
    func startMonitoring(beaconRegion: CLBeaconRegion) {
        beaconRegion.notifyOnEntry = true
        beaconRegion.notifyOnExit = true
        locationManager.startMonitoringForRegion(beaconRegion)
        
    }
    
    func startRanging(beaconRegion: CLBeaconRegion) {
        locationManager.startRangingBeaconsInRegion(beaconRegion)
    }
   
    //  ======== CLLocationManagerDelegate methods ==========
    
    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
        for beacon in beacons {
            var beaconProximity: String;
            switch (beacon.proximity) {
            case CLProximity.Unknown:    beaconProximity = "Unknown";
            case CLProximity.Far:        beaconProximity = "Far";
            case CLProximity.Near:       beaconProximity = "Near";
            case CLProximity.Immediate:  beaconProximity = "Immediate";
            }
            print("BEACON RANGED: uuid: \(beacon.proximityUUID.UUIDString) major: \(beacon.major)  minor: \(beacon.minor) proximity: \(beaconProximity)")
        }
    }
    
    func locationManager(manager: CLLocationManager, didStartMonitoringForRegion region: CLRegion) {
        print("monitoring started")
    }
    
    func locationManager(manager: CLLocationManager, monitoringDidFailForRegion region: CLRegion?, withError error: NSError) {
        print("monitoring failed")
    }

    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        if let beaconRegion = region as? CLBeaconRegion {
            print("DID ENTER REGION: uuid: \(beaconRegion.proximityUUID.UUIDString)")
        }
    }
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        if let beaconRegion = region as? CLBeaconRegion {
            print("DID EXIT REGION: uuid: \(beaconRegion.proximityUUID.UUIDString)")
        }
    }

}

