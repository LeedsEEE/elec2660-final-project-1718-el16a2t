//
//  BottomViewController.h
//  app
//
//  Created by Adam Thompson [el16a2t] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface BottomViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *Shoes;
@property (strong, nonatomic) UIImage *bottomImage;
@property (strong, nonatomic) NSString *bottomImageName;
@property (weak, nonatomic) IBOutlet UILabel *shoesdescription;
@property (weak, nonatomic) IBOutlet UILabel *shoeshyperlink;

@end
