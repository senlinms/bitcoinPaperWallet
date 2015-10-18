//
//  FPWTableViewCell.h
//  FoldyPaperWallet
//
//  Created by Kiara Robles on 10/15/15.
//  Copyright © 2015 Kiara Robles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface FPWTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextField *walletName;
@property (weak, nonatomic) IBOutlet UILabel *keyPublicLabel;
@property (weak, nonatomic) IBOutlet UIImageView *keyPublicImage;
@property (weak, nonatomic) IBOutlet UILabel *keyAddress;
@property (weak, nonatomic) IBOutlet UILabel *keyPrivateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *keyPrivateImage;

- (void)getKeyPrivateImage:(UIImageView *)keyPublicImage;

@end