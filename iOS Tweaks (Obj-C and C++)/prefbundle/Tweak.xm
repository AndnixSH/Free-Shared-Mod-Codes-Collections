#define PLIST_PATH @"/var/mobile/Library/Preferences/prefbundle.plist"
inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%hook UserStats                        
 
-(int)coins {
if(GetPrefBool(@"kCoin")) {  
return 9999999;
}
return %orig;
}

-(int)gems {       
if(GetPrefBool(@"kGems")) {
return 9999999;
}
return %orig;
}

-(int)lives {
if(GetPrefBool(@"kLives")) {
return 9999999;
}
return %orig;
}

%end