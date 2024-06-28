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

#pragma mark - First Row

@property (weak) IBOutlet NSView *view11;
@property (weak) IBOutlet NSView *view12;
@property (weak) IBOutlet NSView *view13;
@property (weak) IBOutlet NSView *view14;
@property (weak) IBOutlet NSView *view15;
@property (weak) IBOutlet NSView *view16;
@property (weak) IBOutlet NSView *view17;
@property (weak) IBOutlet NSView *view18;

#pragma mark - Second Row

@property (weak) IBOutlet NSView *view21;
@property (weak) IBOutlet NSView *view22;
@property (weak) IBOutlet NSView *view23;
@property (weak) IBOutlet NSView *view24;
@property (weak) IBOutlet NSView *view25;
@property (weak) IBOutlet NSView *view26;
@property (weak) IBOutlet NSView *view27;
@property (weak) IBOutlet NSView *view28;

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
    [self setupSecondRow];
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

- (void)setupSecondRow {
    [self setupWhiteView:self.view21];
    [self setupBlackView:self.view22];
    [self setupWhiteView:self.view23];
    [self setupBlackView:self.view24];
    [self setupWhiteView:self.view25];
    [self setupBlackView:self.view26];
    [self setupWhiteView:self.view27];
    [self setupBlackView:self.view28];
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
