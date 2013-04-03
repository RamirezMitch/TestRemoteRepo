//
//  FirstViewController.m
//  testproject
//
//  Created by Michelle Ramirez on 1/4/13.
//  Copyright (c) 2013 Michelle Ramirez. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize buttonShare;
@synthesize gradientView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

-(IBAction)displayShare:(id)sender
{
        NSLog(@"Main Changes Test");
    UIActionSheet *shareActionSheet = [[[UIActionSheet alloc] initWithTitle:@""
                                                                   delegate:self
                                                          cancelButtonTitle:@"Cancel"
                                                     destructiveButtonTitle:nil
                                                          otherButtonTitles:@"Share on Facebook", @"Share on Twitter", @"Share via Email",@"Share via SMS",nil]autorelease];
    
    shareActionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [shareActionSheet showFromTabBar:[[self tabBarController] tabBar]];
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
     /*   SHKItem *fbItem = [SHKItem URL:[ NSURL URLWithString:@"https://itunes.apple.com/sg/app/capitamalls-asia/id439829836?mt=8"] title:Localization(SHARE_FACEBOOK_MSG) contentType:SHKShareTypeURL];
        [SHKFacebook shareItem:fbItem];*/
    }
    else if(buttonIndex == 1)
    {
      /*  SHKItem *item = [SHKItem text:Localization(SHARE_TWITTER_MSG)];
        [SHKTwitter shareItem:item];*/
    }
    else if(buttonIndex == 2)
    {
       /* if([MFMailComposeViewController canSendMail])
        {
            SHKItem *item = [SHKItem text:Localization(SHARE_EMAIL_MSG)];
            item.title = Localization(APP_TITLE);
            item.isMailHTML=NO;
            [SHKMail shareItem:item];
            
        }
        else
        {
             UIAlertView * alert = [[UIAlertView alloc] initWithTitle:Localization(APP_TITLE)
                                                             message:Localization(MESSAGE_EMAIL_ERROR)
                                                            delegate:nil
                                                   cancelButtonTitle:Localization(BUTTON_CLOSE)
                                                   otherButtonTitles:nil];
            [alert show];
            [alert release];
        }*/
    }
    else if(buttonIndex == 3)
    {
        //NSLog(@"Share via SMS");
        
       /* BOOL didSendSMS = NO;
        Class smsClass = (NSClassFromString(@"MFMessageComposeViewController"));
        if(smsClass)
        {
            if([NSClassFromString(@"MFMessageComposeViewController") canSendText])
            {
                SHKItem *item = [SHKItem text:Localization(SHARE_SMS_MSG)];
                [SHKTextMessage shareItem:item];
                didSendSMS = YES;
            }
        }
        if(!didSendSMS)
        {
            UIAlertView * alert = [[UIAlertView alloc] initWithTitle:Localization(APP_TITLE)
                                                             message:Localization(MESSAGE_SMS_ERROR)
                                                            delegate:self
                                                   cancelButtonTitle:Localization(BUTTON_CLOSE)
                                                   otherButtonTitles:nil];
            [alert show];
            [alert release];
        }*/
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
     self.gradientView.colors = @[[UIColor grayColor], [UIColor whiteColor]];
    NSLog(@"test log ..... ");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    [buttonShare release];
    [gradientView release];
    [super dealloc];
}
@end
