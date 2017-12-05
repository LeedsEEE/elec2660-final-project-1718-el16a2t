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
    
    if (self.clothesindex == (-1)) {
        self.clothesindex = 2;
    }
    self.topimage.image = [UIImage imageNamed:[self.imagesArray objectAtIndex: self.clothesindex ]];
}

- (IBAction)Button3:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex + 1;
    
    if (self.clothesindex > (self.imagesArray.count - 1)) {
        self.clothesindex = 0;
    }
    self.middleimage.image = [UIImage imageNamed:[self.imagesArray objectAtIndex: self.clothesindex ]];
}

- (IBAction)Button4:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex - 1;
    
    if (self.clothesindex == (-1)) {
        self.clothesindex = 2;
    }
    self.middleimage.image = [UIImage imageNamed:[self.imagesArray objectAtIndex: self.clothesindex ]];
}

- (IBAction)Button5:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex + 1;
    
    if (self.clothesindex > (self.imagesArray.count - 1)) {
        self.clothesindex = 0;
    }
    self.bottomimage.image = [UIImage imageNamed:[self.imagesArray objectAtIndex: self.clothesindex ]];
}

- (IBAction)Button6:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex - 1;
    
    if (self.clothesindex == (-1)) {
        self.clothesindex = 2;
    }
    self.bottomimage.image = [UIImage imageNamed:[self.imagesArray objectAtIndex: self.clothesindex ]];
}




/*_totalprice = (self.topimage.setPrice + self.middleimage.setPrice + self.bottomimage.setPrice);

self.Price.text = [NSString stringwithformat: @"%f", _totalprice];*/




// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([[segue identifier] isEqualToString:@"TopSegue"]){
        TopViewController *tvc = [segue destinationViewController];
        tvc.topImage = self.topimage.image;
    }
    if([[segue identifier] isEqualToString:@"MiddleSegue"]){
        MiddleViewController *mvc = [segue destinationViewController];
        mvc.middleImage = self.middleimage.image;
    }
    if([[segue identifier] isEqualToString:@"BottomSegue"]){
        BottomViewController *bvc = [segue destinationViewController];
        bvc.bottomImage = self.bottomimage.image;
    }
}


@end

