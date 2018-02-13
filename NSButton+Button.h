//
//  NSButton+Button.h
//  CocoaTest
//
//  Created by jim on 2018/2/13.
//  Copyright © 2018年 trendmicro. All rights reserved.
//



#import <Cocoa/Cocoa.h>

typedef NS_ENUM(NSUInteger, kTextAligment) {
    kTextAlignmentLeft = 0,
    kTextAlignmentRight,
    kTextAlignmentCenter,
};

@interface NSButton (Button)

@property (nonatomic, strong) NSColor *textColor;
@property (nonatomic, assign) NSInteger textAlignment;

@end
