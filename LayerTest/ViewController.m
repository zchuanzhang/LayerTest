//
//  ViewController.m
//  LayerTest
//
//  Created by chuanzhang on 2020/12/9.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageNamed:@"fourImg"];
    self.view.layer.contents = (__bridge id)img.CGImage;
    self.view.layer.contentsGravity = kCAGravityResizeAspect;
}


@end
