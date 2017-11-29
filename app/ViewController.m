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
    
    self.clothesindex = 0;
    self.topimage.image = [UIImage imageNamed:@"image.png"];

}





         
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








- (IBAction)Button1:(UIButton *)sender {
   
    self.clothesindex = self.clothesindex + 1;
    
    if (self.clothesindex > (self.imagesArray.count - 1)) {
        self.clothesindex = 0;
    }
    self.topimage.image = [UIImage imageNamed:[self.imagesArray objectAtIndex: self.clothesindex ]];
}



- (IBAction)Button2:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex - 1;
    
    if (self.clothesindex < (self.imagesArray.count - 2)) {
        self.clothesindex = 2;
    }
    self.topimage.image = [UIImage imageNamed:[self.imagesArray objectAtIndex: self.clothesindex ]];
}


@end

