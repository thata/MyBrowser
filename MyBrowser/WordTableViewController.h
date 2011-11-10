//
//  WordTableViewController.h
//  MyBrowser
//
//  Created by 畠山 貴 on 11/11/10.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WordTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSArray *words;
}

@property (nonatomic, retain) NSArray *words;

- (IBAction)didPushDoneButton:(id)sender;

@end
