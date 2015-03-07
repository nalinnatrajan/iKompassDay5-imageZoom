//
//  ViewController.m
//  imageZoom
//
//  Created by Nalin Natrajan on 7/3/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageViewZoom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed: @"Japan"];
    self.imageViewZoom.image = image;
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)pinchToZoom:(UIPinchGestureRecognizer *)imageViewZoom{
    imageViewZoom.view.transform = CGAffineTransformScale(imageViewZoom.view.transform, imageViewZoom.scale, imageViewZoom.scale);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
