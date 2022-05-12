#import "DungeonHunter4Cheats.h"

@implementation DungeonHunter4CheatsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"DungeonHunter4Cheats" target:self] retain];
	}
	return _specifiers;
}

@end

// vim:ft=objc
