//
// AppDelegate.m
//

#import "AppDelegate.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation googleAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // TODO Get you developer key at: https://code.google.com/apis/console/ .
    [GMSServices provideAPIKey:@"put_your_key_here"];
    return YES;
}
@end
