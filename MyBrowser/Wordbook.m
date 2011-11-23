//
//  Wordbook.m
//  MyBrowser
//
//  Created by 畠山 貴 on 11/11/23.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "Wordbook.h"

NSString *WORDBOOK_USER_DEFAULTS_KEY = @"_words";

@implementation Wordbook

static NSMutableArray *_words;

+ (NSArray *)words {
    if (!_words) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSArray *words = [defaults objectForKey:WORDBOOK_USER_DEFAULTS_KEY];
        if (!words) {
            words = [NSArray array];
        }
        _words = [[NSMutableArray alloc] initWithArray:words];
    }
    return _words;
}

+ (void)addWord:(NSString *)word {
    [_words addObject:word];
    [Wordbook sync];
}

+ (void)sync {
    NSArray *temp = [[NSArray alloc] initWithArray:_words];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:temp forKey:WORDBOOK_USER_DEFAULTS_KEY];
    [defaults synchronize];
}

+ (void)clean {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:WORDBOOK_USER_DEFAULTS_KEY];
    [defaults synchronize];
}

@end


