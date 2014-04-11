
%hook SBBulletinWindowController 


// Hooking a class method
+ (id)sharedInstance {

	NSString *path = [NSString stringWithFormat:@"%@/Library/Preferences/%@", NSHomeDirectory(), @"com.ivanc.disabledbulletinsettings.plist"];
	NSMutableDictionary *settings = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    	
	NSNumber *disabled = [settings objectForKey:@"BulletinDisabled"];

	if	([disabled boolValue])
	 {
		return nil;
	 }
	else
	{	
		return %orig;
	}
}

%end
