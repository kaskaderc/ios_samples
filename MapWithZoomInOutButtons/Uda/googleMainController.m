//
//  googleMainController.m
//  Uda
//
//  Created by Kasia Derc-Fenske on 3/12/13.
//  Copyright (c) 2013 Kasia Derc-Fenske. All rights reserved.
//

#import "googleMainController.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation googleMainController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.googleMap.camera = [GMSCameraPosition cameraWithLatitude:41.9015141
                                                        longitude:12.4607737
                                                             zoom:15
                                                          bearing:10.f
                                                     viewingAngle:37.5f];
    self.googleMap.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(GMSMapView *)mapView didChangeCameraPosition:(GMSCameraPosition *)position {
    NSLog(@"You changed camera position to zoom %f,  target: %f, %f ", position.zoom,
          position.targetAsCoordinate.latitude,
          position.targetAsCoordinate.longitude);

}


- (void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
      NSLog(@"You tapped at %f,%f", coordinate.latitude, coordinate.longitude);
}

- (IBAction)tappedZoomOut:(UIButton *)sender {
    CGFloat currentZoom = self.googleMap.camera.zoom;
    if (currentZoom > kGMSMinZoomLevel) {
        self.googleMap.camera = [GMSCameraPosition cameraWithLatitude:self.googleMap.camera.target.latitude
                                                            longitude:self.googleMap.camera.target.longitude
                                                                 zoom:currentZoom-1
                                                              bearing:self.googleMap.camera.bearing
                                                         viewingAngle:self.googleMap.camera.viewingAngle];
    }
}

- (IBAction)tappedZoomIn:(UIButton *)sender {
    CGFloat currentZoom = self.googleMap.camera.zoom;
    if (currentZoom < kGMSMaxZoomLevel) {
        self.googleMap.camera = [GMSCameraPosition cameraWithLatitude:self.googleMap.camera.target.latitude
                                                            longitude:self.googleMap.camera.target.longitude
                                                                 zoom:currentZoom+1
                                                              bearing:self.googleMap.camera.bearing
                                                         viewingAngle:self.googleMap.camera.viewingAngle];
    }
}


@end
