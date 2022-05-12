#import "SpotiHacks.h"

@implementation SpotiHacksListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"SpotiHacks" target:self] retain];
	}
	return _specifiers;
}

-(void)respring {
         system("killall -9 SpringBoard");
}

- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.andnixsh.com"]];
} 
@end

// vim:ft=objc
