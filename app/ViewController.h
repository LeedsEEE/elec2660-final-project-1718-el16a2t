//
//  ViewController.h
//  app
//
//  Created by Adam Thompson [el16a2t] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopViewController.h"
#import "MiddleViewController.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *topimage;
@property (weak, nonatomic) IBOutlet UIImageView *middleimage;
@property (weak, nonatomic) IBOutlet UIImageView *bottomimage;

- (IBAction)Button1:(UIButton *)sender;
@property (nonatomic) NSUInteger clothesindex;
@property (strong, nonatomic) NSMutableArray *imagesArray;
- (IBAction)Button2:(UIButton *)sender;
- (IBAction)Button3:(UIButton *)sender;
- (IBAction)Button4:(UIButton *)sender;
- (IBAction)Button5:(UIButton *)sender;
- (IBAction)Button6:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UILabel *Price;

@property (nonatomic, strong) NSString *setPrice;






@end

