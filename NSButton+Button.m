//
//  NSButton+Button.m
//  CocoaTest
//
//  Created by jim on 2018/2/13.
//  Copyright © 2018年 trendmicro. All rights reserved.
//

#import "NSButton+Button.h"
#import <objc/message.h>

@implementation NSButton (Button)

- (NSColor*)textColor
{
    return objc_getAssociatedObject(self, "textColor");
}

- (void)setTextColor:(NSColor *)textColor
{
    objc_setAssociatedObject(self, "textColor", textColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
    NSMutableAttributedString *attributedString = [self.attributedTitle mutableCopy];
    [attributedString addAttribute:NSForegroundColorAttributeName value:textColor range:NSMakeRange(0, self.title.length)];
    self.attributedTitle = attributedString;
}

- (NSInteger)textAlignment
{
    return objc_getAssociatedObject(self, "textAlignment");
}

- (void)setTextAlignment:(NSInteger)alignment
{
    objc_setAssociatedObject(self, "textAlignment", @(alignment), OBJC_ASSOCIATION_ASSIGN);
    NSMutableAttributedString *attributedString = [self.attributedTitle mutableCopy];
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    switch (alignment) {
        case kTextAlignmentLeft:
            style.alignment = NSTextAlignmentLeft;
            break;
        case kTextAlignmentRight:
            style.alignment = NSTextAlignmentRight;
            break;
        case kTextAlignmentCenter:
            style.alignment = NSTextAlignmentCenter;
            break;
        default:
            break;
    }
    
    [attributedString addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, self.title.length)];
    self.attributedTitle = attributedString;

}
@end
