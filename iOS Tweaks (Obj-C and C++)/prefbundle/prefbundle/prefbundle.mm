#import "prefbundle.h"

@implementation prefbundleListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"prefbundle" target:self] retain];
	}
	return _specifiers;
}

- (void)respring {
         system("killall -9 SpringBoard");
} 

- (void)apply {
UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle:@"Credits!" message:@"Test by SUPERGIU" delegate:self cancelButtonTitle:@"Thanks!" otherButtonTitles:nil];
[alert1 show];
}

- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.xxxxx.com"]];
}

@end

// vim:ft=objc


