//
// MainController.m
//


#import "MainController.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation googleMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.googleMap.camera = [GMSCameraPosition cameraWithLatitude:41.9015141
                                                        longitude:12.4607737
                                                             zoom:15
                                                          bearing:10.f
                                                     viewingAngle:37.5f];
    self.googleMap.delegate = self;
}

- (void)didReceiveMemoryWarning {
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

- (IBAction)didTapZoomOut:(UIButton *)sender {
   [self moveCamera:-1];
}

- (IBAction)didTapZoomIn:(UIButton *)sender {
    [self moveCamera:1];
}

- (void)moveCamera:(NSInteger)zoom {
    CGFloat currentZoom = self.googleMap.camera.zoom;
    if (currentZoom + zoom <= kGMSMaxZoomLevel && currentZoom + zoom >= kGMSMinZoomLevel) {
        self.googleMap.camera = [GMSCameraPosition cameraWithLatitude:self.googleMap.camera.target.latitude
                                                            longitude:self.googleMap.camera.target.longitude
                                                                 zoom:currentZoom + zoom
                                                              bearing:self.googleMap.camera.bearing
                                                         viewingAngle:self.googleMap.camera.viewingAngle];
    }
}

@end
