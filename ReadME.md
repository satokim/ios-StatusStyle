- ReadME

## 1. info.plist에 추가

    "View controller-based status bar appearance = YES"


## 2. All VC - viewDidLoad에서 호출 NavigationStatus Style를 지정 함.

/*
isLightMode는 변수 변수에 따라 Style를 Control함
*/

    - (void) viewDidLoad {
        [self setNeedsStatusBarAppearanceUpdate];
    }

    - (UIStatusBarStyle)preferredStatusBarStyle {
    
        if ( isLightMode ) {
            return UIStatusBarStyleDarkContent;
        } else {
            return UIStatusBarStyleLightContent;
        }
        
    }    
    
