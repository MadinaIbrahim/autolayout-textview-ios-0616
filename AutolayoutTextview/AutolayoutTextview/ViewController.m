//
//  ViewController.m
//  AutolayoutTextview
//
//  Created by Madina Ibrahim on 6/27/16.
//  Copyright © 2016 Madina Ibrahim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *rightButton;

@property (weak, nonatomic) IBOutlet UIButton *leftButton;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) NSLayoutConstraint *textViewBottomConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

[self.view removeConstraints:self.view.constraints];
self.textView.translatesAutoresizingMaskIntoConstraints = NO;
self.leftButton.translatesAutoresizingMaskIntoConstraints = NO;
self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;

[self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active=YES;
[self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant: 10].active=YES;

[self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active=YES;
[self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant: -10].active=YES;


[self.textView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant: 20].active=YES;
[self.textView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant: 10].active=YES;
[self.textView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active=YES;
//[self.textView.bottomAnchor constraintEqualToAnchor:self.view.rightAnchor.topAnchor constant:-20].active=YES;
    
    //Creating a new peoperty will allow you to store the bottom constraint created here, so you change it later.
    self.textViewBottomConstraint = [self.textView.bottomAnchor constraintEqualToAnchor: self.rightButton.topAnchor constant: -20];
self.textViewBottomConstraint.active = YES;
}

// we can color the background to see sizes....

//self.textview.backgroundColor = [UIColor greenColor];
//self.rightButton.backgroundColor = [UIColor greenColor];
//self.leftButton.backgroundColor = [UIColor greenColor];




// advanced part

-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    if (size.height > size.width) {
        self.textViewBottomConstraint.constant = -20;
    }else{
        self.textViewBottomConstraint.constant = -10;
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
