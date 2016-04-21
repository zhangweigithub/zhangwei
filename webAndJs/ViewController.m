//
//  ViewController.m
//  webAndJs
//
//  Created by zhangwei on 16/3/14.
//  Copyright © 2016年 zhangwei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
{
    UIWebView *webview;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    webview=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    webview.backgroundColor = [UIColor clearColor];
    webview.scalesPageToFit =YES;
    webview.delegate =self;
//    [webview stringByEvaluatingJavaScriptFromString:@"var script = document.createElement('script');"
//     "script.type = 'text/javascript';"
//     "script.text = \"function myFunction() { "
//     "var field = document.getElementsByName('q')[0];"
//     "field.value='朱祁林';"
//     "document.forms[0].submit();"
//     "}\";"
//     "document.getElementsByTagName('head')[0].appendChild(script);"];
//    
//    [webview stringByEvaluatingJavaScriptFromString:@"myFunction();"];
//
    NSURL *url =[[NSURL alloc] initWithString:@"http://www.baidu.com"];
    
    NSURLRequest *request =  [[NSURLRequest alloc] initWithURL:url];
    [webview loadRequest:request];
     NSString *js_result = [webview stringByEvaluatingJavaScriptFromString:@"document.getElementsByName('q')[0].value='朱祁林';"];
    NSString *js_result2 = [webview stringByEvaluatingJavaScriptFromString:@"document.forms[0].submit(); "];
    [self.view addSubview:webview];
    
    // Do any additional setup after loading the view, typically from a nib.
}


//- (void)webViewDidFinishLoad:(UIWebView *)webView {
//    NSString *currentURL = [webView stringByEvaluatingJavaScriptFromString:@"document.location.href"];
//    NSString *title = [webview stringByEvaluatingJavaScriptFromString:@"document.title"];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
