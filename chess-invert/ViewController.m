//
//  ViewController.m
//  chess-invert
//
//  Created by Iván Almada on 2/20/24.
//

#import "ViewController.h"

@import CocoaAsyncSocket;

@interface ViewController ()

#pragma mark - IBOutlets

@property (weak) IBOutlet NSView *view11;
@property (weak) IBOutlet NSView *view12;
@property (weak) IBOutlet NSView *view13;
@property (weak) IBOutlet NSView *view14;
@property (weak) IBOutlet NSView *view15;
@property (weak) IBOutlet NSView *view16;
@property (weak) IBOutlet NSView *view17;
@property (weak) IBOutlet NSView *view18;

@end

@implementation ViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

#pragma mark - Helpers

- (void)setupViews {
    [self setupFirstRow];
}

- (void)setupFirstRow {

}

- (void)setupWhiteView:(NSView *)view {
    view.wantsLayer = YES;
    view.layer.backgroundColor = [NSColor whiteColor].CGColor;
}

@end
