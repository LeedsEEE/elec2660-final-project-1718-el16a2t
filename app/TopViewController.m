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
        self.topdescription.text = [NSString stringWithFormat:@"Black Supreme Box Logo 'Bogo' hoodie - £100"];
        self.tophyperlink.text = [NSString stringWithFormat:@"www.supremenewyork.com"];
    }
    else if ([_topImageName isEqualToString:@"bluehoodie.png"]) {
        self.topdescription.text = [NSString stringWithFormat:@"Blue Supreme Box Logo 'Bogo' hoodie - £110"];
        self.tophyperlink.text = [NSString stringWithFormat:@"www.supremenewyork.com"];
    }
    else if ([_topImageName isEqualToString:@"greenhoodie.png"])
    {
        self.topdescription.text = [NSString stringWithFormat:@"Green Supreme Box Logo 'Bogo' hoodie - £110"];
        self.tophyperlink.text = [NSString stringWithFormat:@"supremenewyork.com"];
        
    }
    else if ([_topImageName isEqualToString:@"guccitee.png"])
    {
        self.topdescription.text = [NSString stringWithFormat:@"Red Gucci T-shirt - £70"];
        self.tophyperlink.text = [NSString stringWithFormat:@"https://gucci.com"];
        
    }
    else {
        self.topdescription.text = [NSString stringWithFormat:@"Black Palace longsleeve Triferg shirt - £90"];
        self.tophyperlink.text = [NSString stringWithFormat:@"https://www.palaceskateboards.com/"];
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
