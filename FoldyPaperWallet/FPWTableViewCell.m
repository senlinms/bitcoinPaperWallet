//
//  FPWTableViewCell.m
//  FoldyPaperWallet
//
//  Created by Kiara Robles on 10/15/15.
//  Copyright © 2015 Kiara Robles. All rights reserved.
//

#import "FPWTableViewCell.h"

@implementation FPWTableViewCell

- (void)awakeFromNib {
    
    [self.contentView removeConstraints:self.contentView.constraints];
    
    for (UIView *subview in self.contentView.subviews) {
        [subview removeConstraints: subview.constraints];
        subview.translatesAutoresizingMaskIntoConstraints = NO;
    }
    
    // Size - relative to screen size
    [self.keyPublicImage.widthAnchor constraintEqualToAnchor:self.contentView.widthAnchor multiplier:0.60].active = YES;
    [self.keyPrivateImage.widthAnchor constraintEqualToAnchor:self.contentView.widthAnchor multiplier:0.60].active = YES;
    
    // Size - relative to other UIObjects (ratio constraiant)
    [self.keyPublicImage.heightAnchor constraintEqualToAnchor:self.keyPublicImage.widthAnchor].active = YES;
    [self.keyPrivateImage.heightAnchor constraintEqualToAnchor:self.keyPrivateImage.widthAnchor].active = YES;
    [self.keyPublicLabel.widthAnchor constraintEqualToAnchor:self.keyPrivateLabel.widthAnchor].active = YES;
    
    // Center
    [self.keyPublicLabel.centerXAnchor constraintEqualToAnchor:self.keyPublicImage.leadingAnchor constant:4].active = YES;
    [self.keyPublicImage.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor].active = YES;
    [self.keyAddress.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor].active = YES;
    [self.keyPrivateLabel.centerXAnchor constraintEqualToAnchor:self.keyPrivateImage.leadingAnchor constant:4].active = YES;
    [self.keyPrivateImage.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor].active = YES;
    
    // Vertical postion
    [self.keyPublicLabel.topAnchor  constraintEqualToAnchor:self.contentView.topAnchor constant:15].active = YES;
    [self.keyPublicLabel.bottomAnchor constraintEqualToAnchor:self.keyPublicImage.topAnchor].active = YES;
    [self.keyPublicImage.bottomAnchor constraintEqualToAnchor:self.keyAddress.topAnchor].active = YES;
    [self.keyAddress.bottomAnchor constraintEqualToAnchor:self.keyPrivateImage.topAnchor constant:-30].active = YES;
    [self.keyPrivateLabel.bottomAnchor constraintEqualToAnchor:self.keyPrivateImage.topAnchor].active = YES;
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
