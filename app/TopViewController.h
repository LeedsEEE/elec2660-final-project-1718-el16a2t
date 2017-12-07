//
//  TopViewController.h
//  app
//
//  Created by Adam Thompson [el16a2t] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface TopViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *Top;
@property (strong, nonatomic) UIImage *topImage;
@property (strong, nonatomic) NSString *topImageName;
@property (weak, nonatomic) IBOutlet UILabel *topdescription;
@property (weak, nonatomic) IBOutlet UILabel *tophyperlink;

@end
