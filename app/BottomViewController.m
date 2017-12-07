//
//  BottomViewController.m
//  app
//
//  Created by Adam Thompson [el16a2t] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BottomViewController.h"
#import "ViewController.h"
@interface BottomViewController ()

@end

@implementation BottomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _Shoes.image = _bottomImage;
    


 if( [_bottomImageName isEqualToString:@"redshoes.png"]){
        self.shoesdescription.text = [NSString stringWithFormat:@"these are some lovely shoes you have here"];
        self.shoeshyperlink.text = [NSString stringWithFormat:@"www.shoes.com"];
    }
else if ([_bottomImageName isEqualToString:@"blueshoes.png"]) {
    self.shoesdescription.text = [NSString stringWithFormat:@"tly shoes you have here"];
    self.shoeshyperlink.text = [NSString stringWithFormat:@"www.blueshoes.com"];
    }
    else {
        self.shoesdescription.text = [NSString stringWithFormat:@"None"];
        self.shoeshyperlink.text = [NSString stringWithFormat:@"None"];
   
    }
    
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

@end
