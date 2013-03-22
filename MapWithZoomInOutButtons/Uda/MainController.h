//
//  googleMainController.h
//  Uda
//
//  Created by Kasia Derc-Fenske on 3/12/13.
//  Copyright (c) 2013 Kasia Derc-Fenske. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>


@interface googleMainController : UIViewController<GMSMapViewDelegate, UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *mapLabel;
@property (strong, nonatomic) IBOutlet GMSMapView *googleMap;
@property (weak, nonatomic) IBOutlet UIButton *zoomOut;
@property (weak, nonatomic) IBOutlet UIButton *zoomIn;


- (IBAction)tappedZoomOut:(UIButton *)sender;
- (IBAction)tappedZoomIn:(UIButton *)sender;

@end
