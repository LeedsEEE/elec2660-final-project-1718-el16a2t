//
//  ViewController.m
//  app
//
//  Created by Adam Thompson [el16a2t] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _imagesArray= [[NSMutableArray alloc] initWithObjects:@"slacks.png", @"image.png", @"footwear.png", nil];
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








- (IBAction)Button1:(UIButton *)sender {
    [_topimage setImage:[UIImage imageNamed:[_imagesArray ) ]]];
}
@end

