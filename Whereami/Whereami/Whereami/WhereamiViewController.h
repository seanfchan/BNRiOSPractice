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

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate,
                                                      MKMapViewDelegate,
                                                      UITextFieldDelegate>
{
  CLLocationManager *locationManager;
  
  IBOutlet MKMapView *mapView;
  IBOutlet UIActivityIndicatorView *activityIndicator;
  IBOutlet UITextField *locationTitleField;
}

@property (nonatomic, strong) MKMapView *mapView;

- (void)findLocation;
- (void)foundLocation:(CLLocation *)loc;

@end
