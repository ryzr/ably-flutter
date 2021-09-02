#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    UNUserNotificationCenter.currentNotificationCenter.delegate = self;
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

// Only called when `'content-available' : 1` is set in the push payload
# pragma mark - Push Notifications - FlutterApplicationLifeCycleDelegate (UIApplicationDelegate)
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    // You can handle your message.
    completionHandler(UIBackgroundFetchResultNewData);
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    NSLog(@"application:didFailToRegisterForRemoteNotificationsWithError was called with error: %@", error.localizedDescription);
}

@end
