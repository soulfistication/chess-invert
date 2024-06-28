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

#pragma mark - Third Row

@property (weak) IBOutlet NSView *view31;
@property (weak) IBOutlet NSView *view32;
@property (weak) IBOutlet NSView *view33;
@property (weak) IBOutlet NSView *view34;
@property (weak) IBOutlet NSView *view35;
@property (weak) IBOutlet NSView *view36;
@property (weak) IBOutlet NSView *view37;
@property (weak) IBOutlet NSView *view38;

#pragma mark - Fourth Row

@property (weak) IBOutlet NSView *view41;
@property (weak) IBOutlet NSView *view42;
@property (weak) IBOutlet NSView *view43;
@property (weak) IBOutlet NSView *view44;
@property (weak) IBOutlet NSView *view45;
@property (weak) IBOutlet NSView *view46;
@property (weak) IBOutlet NSView *view47;
@property (weak) IBOutlet NSView *view48;

#pragma mark - Fifth Row

@property (weak) IBOutlet NSView *view51;
@property (weak) IBOutlet NSView *view52;
@property (weak) IBOutlet NSView *view53;
@property (weak) IBOutlet NSView *view54;
@property (weak) IBOutlet NSView *view55;
@property (weak) IBOutlet NSView *view56;
@property (weak) IBOutlet NSView *view57;
@property (weak) IBOutlet NSView *view58;

#pragma mark - Sixth Row

@property (weak) IBOutlet NSView *view61;
@property (weak) IBOutlet NSView *view62;
@property (weak) IBOutlet NSView *view63;
@property (weak) IBOutlet NSView *view64;
@property (weak) IBOutlet NSView *view65;
@property (weak) IBOutlet NSView *view66;
@property (weak) IBOutlet NSView *view67;
@property (weak) IBOutlet NSView *view68;

#pragma mark - Seventh Row

@property (weak) IBOutlet NSView *view71;
@property (weak) IBOutlet NSView *view72;
@property (weak) IBOutlet NSView *view73;
@property (weak) IBOutlet NSView *view74;
@property (weak) IBOutlet NSView *view75;
@property (weak) IBOutlet NSView *view76;
@property (weak) IBOutlet NSView *view77;
@property (weak) IBOutlet NSView *view78;

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
    [self setupThirdRow];
    [self setupFourthRow];
    [self setupFifthRow];
    [self setupSixthRow];
    [self setupSeventhRow];
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

- (void)setupThirdRow {
    [self setupBlackView:self.view31];
    [self setupWhiteView:self.view32];
    [self setupBlackView:self.view33];
    [self setupWhiteView:self.view34];
    [self setupBlackView:self.view35];
    [self setupWhiteView:self.view36];
    [self setupBlackView:self.view37];
    [self setupWhiteView:self.view38];
}

- (void)setupFourthRow {
    [self setupWhiteView:self.view41];
    [self setupBlackView:self.view42];
    [self setupWhiteView:self.view43];
    [self setupBlackView:self.view44];
    [self setupWhiteView:self.view45];
    [self setupBlackView:self.view46];
    [self setupWhiteView:self.view47];
    [self setupBlackView:self.view48];
}

- (void)setupFifthRow {
    [self setupBlackView:self.view51];
    [self setupWhiteView:self.view52];
    [self setupBlackView:self.view53];
    [self setupWhiteView:self.view54];
    [self setupBlackView:self.view55];
    [self setupWhiteView:self.view56];
    [self setupBlackView:self.view57];
    [self setupWhiteView:self.view58];
}

- (void)setupSixthRow {
    [self setupWhiteView:self.view61];
    [self setupBlackView:self.view62];
    [self setupWhiteView:self.view63];
    [self setupBlackView:self.view64];
    [self setupWhiteView:self.view65];
    [self setupBlackView:self.view66];
    [self setupWhiteView:self.view67];
    [self setupBlackView:self.view68];
}

- (void)setupSeventhRow {
    [self setupBlackView:self.view71];
    [self setupWhiteView:self.view72];
    [self setupBlackView:self.view73];
    [self setupWhiteView:self.view74];
    [self setupBlackView:self.view75];
    [self setupWhiteView:self.view76];
    [self setupBlackView:self.view77];
    [self setupWhiteView:self.view78];
}

#pragma mark - Helpers

- (void)setupWhiteView:(NSView *)view {
    view.wantsLayer = YES;
    view.layer.backgroundColor = [NSColor whiteColor].CGColor;
}

- (void)setupBlackView:(NSView *)view {
    view.wantsLayer = YES;
    view.layer.backgroundColor = [NSColor blackColor].CGColor;
}

@end
