#import "RustyLibpebble2Plugin.h"
#import <rusty_libpebble2/rusty_libpebble2-Swift.h>

@implementation RustyLibpebble2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRustyLibpebble2Plugin registerWithRegistrar:registrar];
}
@end
