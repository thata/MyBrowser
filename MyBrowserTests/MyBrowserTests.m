//
//  MyBrowserTests.m
//  MyBrowserTests
//
//  Created by 畠山 貴 on 11/11/06.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MyBrowserTests.h"

@implementation MyBrowserTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testUserDefaults
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    STAssertNotNil(defaults, @"nilでないこと");
    
    NSString *s =[defaults stringForKey:@"hello"];
    STAssertNil(s, @"まだnilなこと");
    
    
}
- (void)testExample
{
//    STFail(@"Unit tests are not implemented yet in MyBrowserTests");
}

@end
