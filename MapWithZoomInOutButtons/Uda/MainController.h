//
// MainController.h
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>


@interface googleMainController : UIViewController<GMSMapViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *mapLabel;
@property (weak, nonatomic) IBOutlet GMSMapView *googleMap;
@property (weak, nonatomic) IBOutlet UIButton *zoomOut;
@property (weak, nonatomic) IBOutlet UIButton *zoomIn;


- (IBAction)didTapZoomOut:(UIButton *)sender;
- (IBAction)didTapZoomIn:(UIButton *)sender;

@end
