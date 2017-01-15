//
//  ViewController.m
//  Timer
//
//  Created by Mohini on 15/01/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSTimer *timer;
    int count;
    int score;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(UIButton *)sender {
    
    NSString *buttonText=[[self.playButton titleLabel]text];
    if([buttonText isEqualToString:@"START"]){
        score=0;
        count=10;
        
        [self.playButton setTitle:@"TAP ME!!" forState:UIControlStateNormal];
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerBlock:) userInfo:nil repeats:YES];
        self.scoreLabel.text=[NSString stringWithFormat:@"%d",score];

    
    
    }
    else{
        score=score+1;
        self.scoreLabel.text=[NSString stringWithFormat:@"%d",score];
    }
    
}

-(void) timerBlock: (NSTimer*) t{
     count=count-1;
    self.timedisplay.text = [NSString stringWithFormat:@"%d", count];
   
    
    
    if(count==0){
        
       NSString *message=[NSString stringWithFormat:@"Your score is :%d",score];
       [self.playButton setTitle:@"START" forState:UIControlStateNormal];
        [timer invalidate];
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"GAME OVER!!"
                                                                       message:message
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    
    }
    
}
@end
