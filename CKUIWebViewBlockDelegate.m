// Copyright (c) 2013 Constantine Karlis
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import <objc/runtime.h>
#import "CKUIWebViewBlockDelegate.h"


@implementation CKUIWebViewBlockDelegate

/* ====================================================================================================================================== */
#pragma mark - Initialization & Destruction

- (instancetype)initWithWebView:(UIWebView*)webView completionBlock:(CKUIWebViewCompletionBlock)completionBlock
{
    if (!webView)
    {
        [NSException raise:NSInvalidArgumentException format:@"webView block can't be nil"];
    }

    if (!completionBlock)
    {
        [NSException raise:NSInvalidArgumentException format:@"completionBlock can't be nil"];
    }

    self = [super init];
    if (self)
    {
        _webView = webView;
        _completionBlock = completionBlock;
    }

    return self;
}

/* ====================================================================================================================================== */
#pragma mark - Protocol Methods

- (void)webViewDidFinishLoad:(UIWebView*)webView
{
    objc_setAssociatedObject(webView, &CKUIWebViewBlockDelegateKey, nil, OBJC_ASSOCIATION_RETAIN);
    [_webView setDelegate:nil];
    _completionBlock(nil);
}

- (void)webView:(UIWebView*)webView didFailLoadWithError:(NSError*)error
{
    objc_setAssociatedObject(webView, &CKUIWebViewBlockDelegateKey, nil, OBJC_ASSOCIATION_RETAIN);
    [_webView setDelegate:nil];
    _completionBlock(error);
}


@end
