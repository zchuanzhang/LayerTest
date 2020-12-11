//
//  ViewController.m
//  LayerTest
//
//  Created by chuanzhang on 2020/12/9.
//

#import "ViewController.h"


@interface ViewController ()

@property(nonatomic, strong)UIImageView *imgView;
@property(nonatomic, assign)CGFloat tX;
@property(nonatomic, assign)CGFloat tY;
@property(nonatomic, assign)CGFloat angle;
@property(nonatomic, assign)CGFloat scaleX;
@property(nonatomic, assign)CGFloat scaleY;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scaleX = 6;
    _scaleY = 6;
    
    //[UIImage imageNamed:@"ta01"];
    //[UIImage imageNamed:@"fourImg"]
    UIImage *img = [UIImage imageNamed:@"fourImg"];
    
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [self.view addSubview:_imgView];
    _imgView.image = img;
    
//    self.view.layer.contents = (__bridge id)img.CGImage;
//    self.view.layer.contentsGravity = kCAGravityResizeAspect;
//    self.view.layer.contentsCenter = CGRectMake(0, 0, 1, 1);
    
//    CALayer *maskLayer = [CALayer layer];
//    maskLayer.frame = self.view.layer.bounds;
//    maskLayer.frame = self.view.bounds;
//    UIImage *maskImg = [UIImage imageNamed:@"ta02"];
//    maskLayer.contents = (__bridge id)maskImg.CGImage;
//
//    imgView.layer.mask = maskLayer;
//    imgView.layer.cornerRadius = 10;
//    imgView.layer.masksToBounds = YES;
    
    _imgView.layer.shadowOffset = CGSizeMake(0, -3);
    _imgView.layer.shadowColor = [UIColor redColor].CGColor;
    _imgView.layer.shadowOpacity = 0.7;
    
    
    
   
    
    
    
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 300, 100, 100)];
//    view.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view];
    
//    view.layer.shadowColor = [UIColor blackColor].CGColor;
//    view.layer.shadowOffset = CGSizeMake(0, 3);
//    view.layer.shadowRadius = 1.0;
//    view.layer.shadowOpacity = 0.5;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    _tY += 100.0;
    if (_tY == 500) {
        _tY = 0.0;
    }
    
    _tX += 50;
    if (_tX == 300) {
        _tX = 0.0;
    }
    
    _angle += 15;
    
    CGAffineTransform transform = CGAffineTransformIdentity;
    
    //平移
    transform = CGAffineTransformTranslate(transform, _tX, _tY);
    
    //旋转
    transform = CGAffineTransformRotate(transform, _angle*M_PI/180);
    
    //缩放
    
    _scaleX *= 0.5;
    if (_scaleX < 0.5) {
        _scaleX = 5.0;
    }
    
    _scaleY *= 0.5;
    if (_scaleY < 0.5) {
        _scaleY = 5.0;
    }
    
    transform = CGAffineTransformScale(transform, _scaleX, _scaleY);
    
    _imgView.layer.affineTransform = transform;
}


@end
