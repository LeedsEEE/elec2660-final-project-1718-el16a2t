//
//  MiddleViewController.h
//  app
//
//  Created by Adam Thompson [el16a2t] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface MiddleViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *Trousers;
@property (strong, nonatomic) UIImage *middleImage;
@property (strong, nonatomic) NSString *middleImageName;
@property (weak, nonatomic) IBOutlet UILabel *trousersdescription;
@property (weak, nonatomic) IBOutlet UITextView *trousershyperlink;
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *trouserspan;


@end
