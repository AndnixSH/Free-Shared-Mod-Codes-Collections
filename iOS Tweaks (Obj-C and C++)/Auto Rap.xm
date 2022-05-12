//Package: com.smule.autorap

#import <UIKit/UIKit.h>

%hook AutoRapStyle
-(bool)isFree
{
	return true;
}
%end

%hook Listing
-(bool)isFree
{
	return true;
}
%end

%hook MagicSubscriptionManager
-(bool)isSubscriptionActive
{
	return true;
}

-(bool)isActive
{
	return true;
}

-(bool)loaded
{
	return true;
}

-(bool)isPromo
{
	return true;
}

-(bool)isPromoSubs
{
	return true;
}
%end

%hook AutoRapAppDelegate
-(void)applicationDidBecomeActive:(id)arg {
UIAlertView *credits = [[UIAlertView alloc] initWithTitle:@"AutoRap Cheats"
message:@"Hacked by Andnix!"
delegate:nil
cancelButtonTitle:@"OK"
otherButtonTitles:nil];
[credits show];
[credits release];
%orig;
}
%end