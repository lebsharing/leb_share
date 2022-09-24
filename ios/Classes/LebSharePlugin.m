#import "LebSharePlugin.h"
#if __has_include(<leb_share/leb_share-Swift.h>)
#import <leb_share/leb_share-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "leb_share-Swift.h"
#endif

@implementation LebSharePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLebSharePlugin registerWithRegistrar:registrar];
}
@end
