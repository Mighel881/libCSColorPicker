//
// Created by Dana Buehre on 3/17/17.
// Copyright (c) 2017 CreatureSurvive. All rights reserved.
//
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import "UIColor+CSColorPicker.h"

#ifdef __cplusplus
extern "C" {
#endif

UIColor *colorFromHexString(NSString *hexString);
NSString *hexStringFromColor(UIColor *color);
BOOL isValidHexString(NSString *hexString);

#ifdef __cplusplus
}
#endif
