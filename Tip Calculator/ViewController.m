//
//  ViewController.m
//  Tip Calculator
//
//  Created by mudi on 6/25/19.
//  Copyright © 2019 mudi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTaP:(id)sender {
    NSLog(@"Hello");
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    double bill  = [self.billField.text doubleValue];
    
    NSArray *percentages = @[@(0.15), @(0.2), @(0.22)];
    
    double tipPercent = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip = tipPercent * bill;
    double total = bill + tip;
    
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
