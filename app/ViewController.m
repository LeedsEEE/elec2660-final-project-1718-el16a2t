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
    
    self.clothesIndexTop = 0;
    self.clothesIndexMiddle = 0;
    self.clothesIndexBottom = 0;
    
    self.topimage.image = [UIImage imageNamed:[self.imagesArraytops objectAtIndex:0]];
    self.middleimage.image = [UIImage imageNamed:[self.imagesArraytrousers objectAtIndex:0]];
    self.bottomimage.image = [UIImage imageNamed:[self.imagesArrayshoes objectAtIndex:0]];
    

    
  NSString* imageNametop = [self.imagesArraytops objectAtIndex: self.clothesIndexTop ];

    
    if(
       [imageNametop isEqualToString:@"blackhoodie.png"]){
        
        self.TopImageView.Price = 100;
    }
    else if(
            [imageNametop isEqualToString:@"bluehoodie.png"]){
        
        self.TopImageView.Price = 110;
    }
    else if(
            [imageNametop isEqualToString:@"greenhoodie.png"]){
        
        self.TopImageView.Price = 110;
    }
    else if(
            [imageNametop isEqualToString:@"guccitee.png"]){
        
        self.TopImageView.Price = 70;
    }
    else {
        self.TopImageView.Price = 90;
        
    }
    
   NSString* imageNamemiddle = [self.imagesArraytrousers objectAtIndex: self.clothesIndexMiddle ];
    
    if(
       [imageNamemiddle isEqualToString:@"beigetrousers.png"]){
        
        self.MiddleImageView.Price = 70;
    }
    else if(
            [imageNamemiddle isEqualToString:@"bluetrousers.png"]){
        
        self.MiddleImageView.Price = 50;
    }
    else if(
            [imageNamemiddle isEqualToString:@"skinnyjeans.png"]){
        
        self.MiddleImageView.Price = 110;
    }
    else if(
            [imageNamemiddle isEqualToString:@"straightjeans.png"]){
        
        self.MiddleImageView.Price = 30;
    }
    else {
        self.MiddleImageView.Price = 40;
        
    }
    
    
    NSString* imageNamebottom = [self.imagesArrayshoes objectAtIndex:self.clothesIndexMiddle];
    
    if(
       [imageNamebottom isEqualToString:@"goldshoes.png"]){
        
        self.BottomImageView.Price = 200;
    }
    else if(
            [imageNamebottom isEqualToString:@"blueshoes.png"]){
        
        self.BottomImageView.Price = 40;
    }
    else if(
            [imageNamebottom isEqualToString:@"redshoes.png"]){
        
        self.BottomImageView.Price = 50;
    }
    else if(
            [imageNamebottom isEqualToString:@"triplesshoes.png"]){
        self.BottomImageView.Price = 800;
    }
    else {
        self.BottomImageView.Price = 1500;
    }
    
    

    
    
    
    _totalprice = (self.TopImageView.Price + self.MiddleImageView.Price + self.BottomImageView.Price);
    
    self.Pricelabel.text = [NSString stringWithFormat:@"£%.0f", _totalprice];

}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








- (IBAction)Button1:(UIButton *)sender {
   
    self.clothesIndexTop = self.clothesIndexTop + 1;
    
    if (self.clothesIndexTop > (self.imagesArraytops.count - 1)) {
        self.clothesIndexTop = 0;
    }
    self.topimage.image = [UIImage imageNamed:[self.imagesArraytops objectAtIndex: self.clothesIndexTop ]];
    

    NSString* imageName = [self.imagesArraytops objectAtIndex: self.clothesIndexTop ];
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
    
    self.clothesIndexTop = self.clothesIndexTop - 1;
    
    if (self.clothesIndexTop == (-1)) {
        self.clothesIndexTop = 4;
    }
    self.topimage.image = [UIImage imageNamed:[self.imagesArraytops objectAtIndex: self.clothesIndexTop ]];
    
    
    NSString* imageName = [self.imagesArraytops objectAtIndex: self.clothesIndexTop ];

    
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
    
    self.clothesIndexMiddle = self.clothesIndexMiddle + 1;
    
    if (self.clothesIndexMiddle > (self.imagesArraytrousers.count - 1)) {
        self.clothesIndexMiddle = 0;
    }
    self.middleimage.image = [UIImage imageNamed:[self.imagesArraytrousers objectAtIndex: self.clothesIndexMiddle ]];
    
    
      NSString* imageName = [self.imagesArraytrousers objectAtIndex: self.clothesIndexMiddle ];
    
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
    
    self.clothesIndexMiddle = self.clothesIndexMiddle - 1;
    
    if (self.clothesIndexMiddle == (-1)) {
        self.clothesIndexMiddle = 4;
    }
    self.middleimage.image = [UIImage imageNamed:[self.imagesArraytrousers objectAtIndex: self.clothesIndexMiddle ]];
    
    
    NSString* imageName = [self.imagesArraytrousers objectAtIndex: self.clothesIndexMiddle ];
    
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
    
    self.clothesIndexBottom = self.clothesIndexBottom + 1;
    
    if (self.clothesIndexBottom > (self.imagesArrayshoes.count - 1)) {
        self.clothesIndexBottom = 0;
    }
    self.bottomimage.image = [UIImage imageNamed:[self.imagesArrayshoes objectAtIndex: self.clothesIndexBottom ]];
    
    
      NSString* imageName = [self.imagesArrayshoes objectAtIndex: self.clothesIndexBottom ];
    
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
    
    self.clothesIndexBottom = self.clothesIndexBottom - 1;
    
    if (self.clothesIndexBottom == (-1)) {
        self.clothesIndexBottom = 4;
    }
    self.bottomimage.image = [UIImage imageNamed:[self.imagesArrayshoes objectAtIndex: self.clothesIndexBottom ]];
    
    
    NSString* imageName = [self.imagesArrayshoes objectAtIndex: self.clothesIndexBottom ];
    
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
        tvc.topImageName = [self.imagesArraytops objectAtIndex: self.clothesIndexTop];
    }
    if([[segue identifier] isEqualToString:@"MiddleSegue"]){
        MiddleViewController *mvc = [segue destinationViewController];
        mvc.middleImage = self.middleimage.image;
        mvc.middleImageName = [self.imagesArraytrousers objectAtIndex: self.clothesIndexMiddle];
    }
    if([[segue identifier] isEqualToString:@"BottomSegue"]){
        BottomViewController *bvc = [segue destinationViewController];
        bvc.bottomImage = self.bottomimage.image;
        bvc.bottomImageName = [self.imagesArrayshoes objectAtIndex: self.clothesIndexBottom];
        
        
    }
    
}


@end

