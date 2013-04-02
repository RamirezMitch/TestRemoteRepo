//
//  FirstViewController.h
//  testproject
//
//  Created by Michelle Ramirez on 1/4/13.
//  Copyright (c) 2013 Michelle Ramirez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UIActionSheetDelegate>
@property (retain, nonatomic) IBOutlet UIButton *buttonShare;
-(IBAction)displayShare:(id)sender;
@end
