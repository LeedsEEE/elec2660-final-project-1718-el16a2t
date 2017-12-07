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
    
    self.TopImageView = [[TopImageView alloc] init];
    self.MiddleImageView = [[MiddleImageView alloc] init];
    self.BottomImageView = [[BottomImageView alloc] init];
    
    _imagesArraytops= [[NSMutableArray alloc] initWithObjects:@"blackhoodie.png", @"bluehoodie.png", @"greenhoodie.png", @"guccitee.png", @"palacetee.png", nil];
    _imagesArraytrousers= [[NSMutableArray alloc] initWithObjects: @"beigetrousers.png", @"bluetrousers.png", @"skinnyjeans.png", @"straightjeans.png", @"joggers.png", nil];
    _imagesArrayshoes= [[NSMutableArray alloc] initWithObjects: @"blueshoes.png", @"goldshoes.png", @"redshoes.png", @"triplesshoes.png", @"yeezyshoes.png", nil];
    
    self.clothesindex = 0;

    
  /*    NSString* imageName = [self.imagesArraytops objectAtIndex: self.clothesindex ];

    
    if(
       [imageName isEqualToString:@"blackhoodie.png"]){
        
        self.TopImageView.Price = 200;
    }
    else if(
            [imageName isEqualToString:@"slacks.png"]){
        
        self.TopImageView.Price = 400;
    }
    else {
    self.TopImageView.Price = 9;
    
    }
    

    
    if(
       self.middleimage.image == [UIImage imageNamed:@"image.png"]){
        
        self.MiddleImageView.Price = 200;
    }
    else if(
            self.middleimage.image == [UIImage imageNamed:@"slacks.png"]){
        
        self.MiddleImageView.Price = 400;
    }
    else {
        self.MiddleImageView.Price = 9;
    }
    
    

    
    if(
       self.bottomimage.image == [UIImage imageNamed:@"image.png"]){
        
        self.BottomImageView.Price = 200;
    }
    else if(
            self.bottomimage.image == [UIImage imageNamed:@"slacks.png" ]){
        
        self.BottomImageView.Price = 400;
    }
    else {
        self.BottomImageView.Price = 9;
    }
    
    

    
    
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];
*/
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








- (IBAction)Button1:(UIButton *)sender {
   
    self.clothesindex = self.clothesindex + 1;
    
    if (self.clothesindex > (self.imagesArraytops.count - 1)) {
        self.clothesindex = 0;
    }
    self.topimage.image = [UIImage imageNamed:[self.imagesArraytops objectAtIndex: self.clothesindex ]];
    

    NSString* imageName = [self.imagesArraytops objectAtIndex: self.clothesindex ];
    //https://stackoverflow.com/questions/47692822/objective-c-xcode-image-in-imageview-not-recognised-by-xcode
    
   if(
       [imageName isEqualToString:@"blackhoodie.png"]){
        
        self.TopImageView.Price = 100;
    }
    else if(
            [imageName isEqualToString:@"bluehoodie.png"]){
        
        self.TopImageView.Price = 110;
    }
    else if(
            [imageName isEqualToString:@"greenhoodie.png"]){
        
        self.TopImageView.Price = 110;
    }
    else if(
            [imageName isEqualToString:@"guccitee.png"]){
        
        self.TopImageView.Price = 70;
    }
    else {
        self.TopImageView.Price = 90;
        
    }
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];
}



- (IBAction)Button2:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex - 1;
    
    if (self.clothesindex == (-1)) {
        self.clothesindex = 4;
    }
    self.topimage.image = [UIImage imageNamed:[self.imagesArraytops objectAtIndex: self.clothesindex ]];
    
    
    NSString* imageName = [self.imagesArraytops objectAtIndex: self.clothesindex ];

    
    if(
       [imageName isEqualToString:@"blackhoodie.png"]){
        
        self.TopImageView.Price = 100;
    }
    else if(
            [imageName isEqualToString:@"bluehoodie.png"]){
        
        self.TopImageView.Price = 110;
    }
    else if(
            [imageName isEqualToString:@"greenhoodie.png"]){
        
        self.TopImageView.Price = 110;
    }
    else if(
            [imageName isEqualToString:@"guccitee.png"]){
        
        self.TopImageView.Price = 70;
    }
    else {
        self.TopImageView.Price = 90;
        
    }
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];
}

- (IBAction)Button3:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex + 1;
    
    if (self.clothesindex > (self.imagesArraytrousers.count - 1)) {
        self.clothesindex = 0;
    }
    self.middleimage.image = [UIImage imageNamed:[self.imagesArraytrousers objectAtIndex: self.clothesindex ]];
    
    
      NSString* imageName = [self.imagesArraytrousers objectAtIndex: self.clothesindex ];
    
    if(
       [imageName isEqualToString:@"beigetrousers.png"]){
        
        self.MiddleImageView.Price = 70;
    }
    else if(
            [imageName isEqualToString:@"bluetrousers.png"]){
        
        self.MiddleImageView.Price = 50;
    }
    else if(
            [imageName isEqualToString:@"skinnyjeans.png"]){
        
        self.MiddleImageView.Price = 110;
    }
    else if(
            [imageName isEqualToString:@"straightjeans.png"]){
        
        self.MiddleImageView.Price = 30;
    }
    else {
        self.MiddleImageView.Price = 40;
        
    }
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];
    
}

- (IBAction)Button4:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex - 1;
    
    if (self.clothesindex == (-1)) {
        self.clothesindex = 4;
    }
    self.middleimage.image = [UIImage imageNamed:[self.imagesArraytrousers objectAtIndex: self.clothesindex ]];
    
    
    NSString* imageName = [self.imagesArraytrousers objectAtIndex: self.clothesindex ];
    
    if(
       [imageName isEqualToString:@"beigetrousers.png"]){
        
        self.MiddleImageView.Price = 70;
    }
    else if(
            [imageName isEqualToString:@"bluetrousers.png"]){
        
        self.MiddleImageView.Price = 50;
    }
    else if(
            [imageName isEqualToString:@"skinnyjeans.png"]){
        
        self.MiddleImageView.Price = 110;
    }
    else if(
            [imageName isEqualToString:@"straightjeans.png"]){
        
        self.MiddleImageView.Price = 30;
    }
    else {
        self.MiddleImageView.Price = 40;
        
    }
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];
    
}

- (IBAction)Button5:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex + 1;
    
    if (self.clothesindex > (self.imagesArrayshoes.count - 1)) {
        self.clothesindex = 0;
    }
    self.bottomimage.image = [UIImage imageNamed:[self.imagesArrayshoes objectAtIndex: self.clothesindex ]];
    
    
      NSString* imageName = [self.imagesArrayshoes objectAtIndex: self.clothesindex ];
    
   if(
       [imageName isEqualToString:@"goldshoes.png"]){
        
        self.BottomImageView.Price = 200;
    }
    else if(
            [imageName isEqualToString:@"blueshoes.png"]){
        
        self.BottomImageView.Price = 40;
    }
    else if(
            [imageName isEqualToString:@"redshoes.png"]){
        
        self.BottomImageView.Price = 50;
    }
    else if(
            [imageName isEqualToString:@"triplesshoes.png"]){
        self.BottomImageView.Price = 800;
    }
    else {
        self.BottomImageView.Price = 1500;
}
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];
}
- (IBAction)Button6:(UIButton *)sender {
    
    self.clothesindex = self.clothesindex - 1;
    
    if (self.clothesindex == (-1)) {
        self.clothesindex = 4;
    }
    self.bottomimage.image = [UIImage imageNamed:[self.imagesArrayshoes objectAtIndex: self.clothesindex ]];
    
    
    NSString* imageName = [self.imagesArrayshoes objectAtIndex: self.clothesindex ];
    
    if(
       [imageName isEqualToString:@"goldshoes.png"]){
        
        self.BottomImageView.Price = 200;
    }
    else if(
            [imageName isEqualToString:@"blueshoes.png"]){
        
        self.BottomImageView.Price = 40;
    }
    else if(
            [imageName isEqualToString:@"redshoes.png"]){
        
        self.BottomImageView.Price = 50;
    }
    else if(
            [imageName isEqualToString:@"triplesshoes.png"]){
        self.BottomImageView.Price = 800;
    }
    else {
        self.BottomImageView.Price = 1500;
    }
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];
    

}








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

