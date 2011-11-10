//
//  MyBrowserViewController.m
//  MyBrowser
//
//  Created by 畠山 貴 on 11/11/06.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MyBrowserViewController.h"
#import "WordTableViewController.h"

@implementation MyBrowserViewController

@synthesize webView;
@synthesize navigationBar;
@synthesize words;

- (IBAction)addWord {
    NSString *s = @"window.getSelection().toString()";
    NSString *selection = [webView stringByEvaluatingJavaScriptFromString:s];
    [self.words addObject:selection];
}

- (IBAction)listWords {
    WordTableViewController *view = [[WordTableViewController alloc]
                                     initWithNibName:@"WordTableViewController" bundle:nil];
    view.words = self.words;
    [self presentModalViewController:view animated:YES];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    // タイトルを表示
    NSString *title = [self.webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    navigationBar.topItem.title = title;
};

- (IBAction)prev {
    [webView goBack];
}

- (IBAction)next {
    [webView goForward];
}

- (IBAction)stop {
    [webView stopLoading];
}

- (IBAction)reload {
    [webView reload];
}

- (IBAction)home {
    NSURL *url = [NSURL URLWithString:@"http://c2.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (!words) {
        NSMutableArray *array = [[NSMutableArray alloc] init];
        self.words = array;
        [array release];
    }

    // Do any additional setup after loading the view from its nib.
    NSURL *url = [NSURL URLWithString:@"http://c2.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
