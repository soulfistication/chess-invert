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

#pragma mark - Eight Row

@property (weak) IBOutlet NSView *view81;
@property (weak) IBOutlet NSView *view82;
@property (weak) IBOutlet NSView *view83;
@property (weak) IBOutlet NSView *view84;
@property (weak) IBOutlet NSView *view85;
@property (weak) IBOutlet NSView *view86;
@property (weak) IBOutlet NSView *view87;
@property (weak) IBOutlet NSView *view88;

#pragma mark - NSTimer

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViews];
    [self setupTimer];
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
    [self setupEightRow];
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

- (void)setupEightRow {
    [self setupWhiteView:self.view81];
    [self setupBlackView:self.view82];
    [self setupWhiteView:self.view83];
    [self setupBlackView:self.view84];
    [self setupWhiteView:self.view85];
    [self setupBlackView:self.view86];
    [self setupWhiteView:self.view87];
    [self setupBlackView:self.view88];
}

#pragma mark - Helpers

- (void)setupTimer {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        [self switchAll];
    }];
}

- (void)setupWhiteView:(NSView *)view {
    view.wantsLayer = YES;
    view.layer.backgroundColor = [NSColor whiteColor].CGColor;
}

- (void)setupBlackView:(NSView *)view {
    view.wantsLayer = YES;
    view.layer.backgroundColor = [NSColor blackColor].CGColor;
}

- (void)switchAll {
    [self switchFirstRow];
    [self switchSecondRow];
    [self switchThirdRow];
    [self switchFourthRow];
    [self switchFifthRow];
    [self switchSixthRow];
    [self switchSeventhRow];
    [self switchEigthRow];
}

- (void)switchView:(NSView *)view {

    CGColorRef currentColor = view.layer.backgroundColor;
    
    bool isBlack = CGColorEqualToColor(currentColor, [NSColor blackColor].CGColor);
    
    if (isBlack) {
        printf("it's black. Changing to white\n");
        view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    } else {
        printf("it's white. Changing to black\n");
        view.layer.backgroundColor = [NSColor blackColor].CGColor;
    }

}

- (void)switchFirstRow {
    [self switchView:self.view11];
    [self switchView:self.view12];
    [self switchView:self.view13];
    [self switchView:self.view14];
    [self switchView:self.view15];
    [self switchView:self.view16];
    [self switchView:self.view17];
    [self switchView:self.view18];
}

- (void)switchSecondRow {
    [self switchView:self.view21];
    [self switchView:self.view22];
    [self switchView:self.view23];
    [self switchView:self.view24];
    [self switchView:self.view25];
    [self switchView:self.view26];
    [self switchView:self.view27];
    [self switchView:self.view28];
}

- (void)switchThirdRow {
    [self switchView:self.view31];
    [self switchView:self.view32];
    [self switchView:self.view33];
    [self switchView:self.view34];
    [self switchView:self.view35];
    [self switchView:self.view36];
    [self switchView:self.view37];
    [self switchView:self.view38];
}

- (void)switchFourthRow {
    [self switchView:self.view41];
    [self switchView:self.view42];
    [self switchView:self.view43];
    [self switchView:self.view44];
    [self switchView:self.view45];
    [self switchView:self.view46];
    [self switchView:self.view47];
    [self switchView:self.view48];
}

- (void)switchFifthRow {
    [self switchView:self.view51];
    [self switchView:self.view52];
    [self switchView:self.view53];
    [self switchView:self.view54];
    [self switchView:self.view55];
    [self switchView:self.view56];
    [self switchView:self.view57];
    [self switchView:self.view58];
}

- (void)switchSixthRow {
    [self switchView:self.view61];
    [self switchView:self.view62];
    [self switchView:self.view63];
    [self switchView:self.view64];
    [self switchView:self.view65];
    [self switchView:self.view66];
    [self switchView:self.view67];
    [self switchView:self.view68];
}

- (void)switchSeventhRow {
    [self switchView:self.view71];
    [self switchView:self.view72];
    [self switchView:self.view73];
    [self switchView:self.view74];
    [self switchView:self.view75];
    [self switchView:self.view76];
    [self switchView:self.view77];
    [self switchView:self.view78];
}

- (void)switchEigthRow {
    [self switchView:self.view81];
    [self switchView:self.view82];
    [self switchView:self.view83];
    [self switchView:self.view84];
    [self switchView:self.view85];
    [self switchView:self.view86];
    [self switchView:self.view87];
    [self switchView:self.view88];
}

@end
