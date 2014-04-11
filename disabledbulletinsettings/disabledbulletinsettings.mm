#import <Preferences/Preferences.h>

@interface disabledbulletinsettingsListController: PSListController {
}
@end

@implementation disabledbulletinsettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"disabledbulletinsettings" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
