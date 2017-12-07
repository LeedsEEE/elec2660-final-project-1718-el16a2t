//
//  TopViewController.m
//  app
//
//  Created by Adam Thompson [el16a2t] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TopViewController.h"


@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _Top.image = _topImage;
    
    
    if( [_topImageName isEqualToString:@"blackhoodie.png"]){
        self.topdescription.text = [NSString stringWithFormat:@"these are some lovely shoes you have here"];
        self.tophyperlink.text = [NSString stringWithFormat:@"www.shoes.com"];
    }
    else if ([_topImageName isEqualToString:@"bluehoodie.png"]) {
        self.topdescription.text = [NSString stringWithFormat:@"tly shoes you have here"];
        self.tophyperlink.text = [NSString stringWithFormat:@"www.blueshoes.com"];
    }
    else if ([_topImageName isEqualToString:@"greenhoodie.png"])
    {
        self.topdescription.text = [NSString stringWithFormat:@"None"];
        self.tophyperlink.text = [NSString stringWithFormat:@"None"];
        
    }
    else if ([_topImageName isEqualToString:@"guccitee.png"])
    {
        self.topdescription.text = [NSString stringWithFormat:@"None"];
        self.tophyperlink.text = [NSString stringWithFormat:@"None"];
        
    }
    else {
        self.topdescription.text = [NSString stringWithFormat:@"None"];
        self.tophyperlink.text = [NSString stringWithFormat:@"None"];
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
