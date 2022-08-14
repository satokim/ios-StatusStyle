//
//  ViewController.m
//  ios-StatusStyle
//
//  Created by yusuke sato on 2022/08/14.
//

#import "Main_VC.h"

@interface Main_VC () <UIScrollViewDelegate>

@end

@implementation Main_VC {
    BOOL isModeDark;
}

@synthesize scv;

//MARK: - 🔶 LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [scv setDelegate:self];
    
    isModeDark = YES;
    
    [self setNeedsStatusBarAppearanceUpdate];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    
    if ( isModeDark ) {
        return UIStatusBarStyleDarkContent;
    } else {
        return UIStatusBarStyleLightContent;
    }
    
}

- (BOOL)prefersStatusBarHidden {
    return NO; // your own visibility code
}


//MARK: - 🔶 Delegate (UIScrollView)
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if ( scrollView == scv ) {
        
        CGFloat y = scv.contentOffset.y;
        
        if ( y > 100 ) {
            isModeDark = NO;
            [UIView animateWithDuration:0.3 animations:^{
                [self setNeedsStatusBarAppearanceUpdate];
            }];
            
        } else {
            isModeDark = YES;
            [UIView animateWithDuration:0.3 animations:^{
                [self setNeedsStatusBarAppearanceUpdate];
            }];
            
        }
        
    }
    
}

@end
