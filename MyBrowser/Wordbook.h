//
//  Wordbook.h
//  MyBrowser
//
//  Created by 畠山 貴 on 11/11/23.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wordbook : NSObject

+ (NSArray *)words;
+ (void)addWord:(NSString *)word;
+ (void)sync;
+ (void)clean;

@end
