//
//  WordBookTests.m
//  MyBrowser
//
//  Created by 畠山 貴 on 11/11/23.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "Wordbook.h"
#import "WordBookTests.h"

@implementation WordBookTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    [Wordbook clean];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

// All code under test must be linked into the Unit Test bundle
- (void)testMath
{
    NSArray *words = nil;
    
    words = [Wordbook words];
    STAssertTrue([words count] == 0, @"最初はからっぽ");

    [Wordbook addWord:@"hello"];
    words = [Wordbook words];
    STAssertTrue([words count] == 1, @"1レコード増える");
    
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    STAssertNotNil(defaults, @"nilでないこと");
//    
//    NSString *s =[defaults stringForKey:@"hello"];
//    STAssertNil(s, @"まだnilなこと");
//
//    STAssertTrue(1 == 1, @"hello");
}

@end
