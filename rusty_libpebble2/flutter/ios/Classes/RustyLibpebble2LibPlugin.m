#import "RustyLibpebble2LibPlugin.h"
#import <rusty_libpebble2_lib/rusty_libpebble2_lib-Swift.h>

@implementation RustyLibpebble2LibPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRustyLibpebble2LibPlugin registerWithRegistrar:registrar];
}
@end
