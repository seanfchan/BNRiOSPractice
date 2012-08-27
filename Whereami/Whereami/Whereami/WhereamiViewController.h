//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Madiha Mubin on 8/26/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>
{
  CLLocationManager *locationManager;
  
  IBOutlet MKMapView *mapView;
  IBOutlet UIActivityIndicatorView *activityIndicator;
  IBOutlet UITextField *locationTitleField;
}

@end
