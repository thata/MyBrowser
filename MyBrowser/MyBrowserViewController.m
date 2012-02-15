//
//  MyBrowserViewController.m
//  MyBrowser
//
//  Created by 畠山 貴 on 11/11/06.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MyBrowserViewController.h"

@implementation MyBrowserViewController

@synthesize webView;
@synthesize navigationBar;

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
//    [webView stringByEvaluatingJavaScriptFromString:@"jQuery(document.body).append(\"<h1>hgoe</h1>\");"];
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
    // Do any additional setup after loading the view from its nib.
    NSURL *url = [NSURL URLWithString:@"http://c2.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
    // load jquery
    NSString *path = [[NSBundle mainBundle] pathForResource:@"jquery.js" ofType:nil];
    NSString *js = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    [webView stringByEvaluatingJavaScriptFromString:js];
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
