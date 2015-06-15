//
//  FISEpochViewController.m
//  EpochButton
//
//  Created by Lukas Thoms on 6/15/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISEpochViewController.h"

@interface FISEpochViewController ()
@property (weak, nonatomic) IBOutlet UILabel *epochLabel;
- (IBAction)epochButton:(id)sender;
- (double) epochMethod;

@end

@implementation FISEpochViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)epochButton:(id)sender {
    self.epochLabel.hidden = NO;
    self.epochLabel.text = [NSString stringWithFormat:@"%f", [self epochMethod]];
}

- (double) epochMethod {
    NSTimeInterval secondsSinceUnixEpoch = [[NSDate date]timeIntervalSince1970];
    return secondsSinceUnixEpoch;
}

@end
