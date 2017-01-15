//
//  ViewController.h
//  Timer
//
//  Created by Mohini on 15/01/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIButton *playButton;
@property (strong, nonatomic) IBOutlet UILabel *timedisplay;
- (IBAction)buttonPressed:(UIButton *)sender;

- (IBAction)resetButton:(id)sender;

@end

