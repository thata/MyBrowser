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
- (void)testWordbook
{
    NSArray *words = nil;
    
    words = [Wordbook words];
    STAssertTrue([words count] == 0, @"最初はからっぽ");

    [Wordbook addWord:@"hello"];
    words = [Wordbook words];
    STAssertTrue([words count] == 1, @"1レコード増える");
    
    [Wordbook addWord:@"good night"];
    [Wordbook addWord:@"good afternoon"];
    words = [Wordbook words];
    STAssertTrue([words count] == 3, @"さらに2レコード増える");
    
    NSString *word0 = [words objectAtIndex:0];
    NSString *word1 = [words objectAtIndex:1];
    NSString *word2 = [words objectAtIndex:2];
    
    STAssertTrue([@"good afternoon" isEqualToString:word0], @"なんとなくソートされてること");
    STAssertTrue([@"good night" isEqualToString:word1], @"なんとなくソートされてること");
    STAssertTrue([@"hello" isEqualToString:word2], @"なんとなくソートされてること");
}

@end
