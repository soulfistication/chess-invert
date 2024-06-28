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
    
    [self setupViews];
}

#pragma mark - Helpers

- (void)setupViews {
    [self setupFirstRow];
}

- (void)setupFirstRow {
    [self setupBlackView:self.view11];
    [self setupWhiteView:self.view12];
    [self setupBlackView:self.view13];
    [self setupWhiteView:self.view14];
    [self setupBlackView:self.view15];
    [self setupWhiteView:self.view16];
    [self setupBlackView:self.view17];
    [self setupWhiteView:self.view18];
}

- (void)setupWhiteView:(NSView *)view {
    view.wantsLayer = YES;
    view.layer.backgroundColor = [NSColor whiteColor].CGColor;
}

- (void)setupBlackView:(NSView *)view {
    view.wantsLayer = YES;
    view.layer.backgroundColor = [NSColor blackColor].CGColor;
}

@end
