//
//  ViewController.h
//  app
//
//  Created by Adam Thompson [el16a2t] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *topimage;
@property (weak, nonatomic) IBOutlet UIImageView *middleimage;
@property (weak, nonatomic) IBOutlet UIImageView *bottomimage;

- (IBAction)Button1:(UIButton *)sender;

@property (strong, nonatomic) NSMutableArray *imagesArray;

@end

