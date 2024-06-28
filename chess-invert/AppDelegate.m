//
//  AppDelegate.m
//  chess-invert
//
//  Created by Iván Almada on 2/20/24.
//

#import "AppDelegate.h"

@implementation AppDelegate

#pragma mark - App Delegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSLog(@"%@", @"Finished launching app");
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    NSLog(@"%@", @"App will terminate");
}

- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

@end
