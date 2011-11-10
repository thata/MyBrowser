//
//  MyBrowserViewController.h
//  MyBrowser
//
//  Created by 畠山 貴 on 11/11/06.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIView.h>

@interface MyBrowserViewController : UIViewController <UIWebViewDelegate>
{
    UIWebView *webView;
    UINavigationBar *navigationBar;
    NSMutableArray *words;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UINavigationBar *navigationBar;
@property (nonatomic, retain) NSMutableArray *words;

- (IBAction)prev;
- (IBAction)next;
- (IBAction)stop;
- (IBAction)reload;
- (IBAction)home;

- (IBAction)addWord;
- (IBAction)listWords;

@end
