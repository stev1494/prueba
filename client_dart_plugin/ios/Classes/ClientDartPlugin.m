#import "ClientDartPlugin.h"
#if __has_include(<client_dart_plugin/client_dart_plugin-Swift.h>)
#import <client_dart_plugin/client_dart_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "client_dart_plugin-Swift.h"
#endif

@implementation ClientDartPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftClientDartPlugin registerWithRegistrar:registrar];
}
@end
