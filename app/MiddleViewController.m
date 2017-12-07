//
//  MiddleViewController.m
//  app
//
//  Created by Adam Thompson [el16a2t] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MiddleViewController.h"
#import "ViewController.h"
@interface MiddleViewController ()

@end

@implementation MiddleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _Trousers.image = _middleImage;
    
    
    if( [_middleImageName isEqualToString:@"beigetrousers.png"]){
        self.trousersdescription.text = [NSString stringWithFormat:@"Classic Dickies beige skate pants - £70"];
        self.trousershyperlink.text = [NSString stringWithFormat:@"https://www.dickiesworkwear.com/en"];
    }
    else if ([_middleImageName isEqualToString:@"bluetrousers.png"]) {
        self.trousersdescription.text = [NSString stringWithFormat:@"Classic straight leg Route-One blue pants - £50"];
        self.trousershyperlink.text = [NSString stringWithFormat:@"https://www.routeone.co.uk/"];
    }
    else if ([_middleImageName isEqualToString:@"straightjeans.png"])
    {
        self.trousersdescription.text = [NSString stringWithFormat:@"Zara straight leg jeans - £30"];
        self.trousershyperlink.text = [NSString stringWithFormat:@"https://www.zara.com/uk/"];
        
    }
    else if ([_middleImageName isEqualToString:@"skinnyjeans.png"])
    {
        self.trousersdescription.text = [NSString stringWithFormat:@"Versace skinny jeans, floral design - £110"];
        self.trousershyperlink.text = [NSString stringWithFormat:@"www.versace.com/"];
        
    }
    else {
        self.trousersdescription.text = [NSString stringWithFormat:@"American Flag joggers - £40"];
        self.trousershyperlink.text = [NSString stringWithFormat:@"https://getonfleek.com"];
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
