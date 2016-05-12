//
//  ViewController.m
//  TaxCalculator
//
//  Created by Pasha Bahadori on 5/10/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic) double sfTax;
@property (nonatomic) double chiTax;
@property (nonatomic) double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (IBAction)onCalculateButtonTapped:(id)sender {
    
    // Create a string that represents the inputted text entered into the price TextField from main StoryBoard
    NSString *enteredText = self.priceTextField.text;
  
    // Convert the enteredText string into a double value
    double enteredValue = enteredText.doubleValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = enteredValue * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .08875;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
