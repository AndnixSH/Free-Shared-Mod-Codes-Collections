//Package: com.smule.minimagicpiano

#import <UIKit/UIKit.h>

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

%end

%hook SNPAccountIcon
-(bool)isSubscriber
{
	return true;
}

-(bool)isVIP
{
	return true;
}

%end

%hook MagicPurchaseAPI
+(bool)subscriptionAllowed
{
	return true;
}
%end

%hook OwnedObjectManager
-(bool) canPlay:(id)fp8
{
    return true;
    %orig(fp8);
}

-(bool) isOwnedOrPlayed:(id)fp8
{
    return true;
    %orig(fp8);
}

-(bool) isOwned:(id)fp8
{
    return true;
    %orig(fp8);
}
%end


%hook PianoAppDelegate
-(void)applicationDidBecomeActive:(id)arg {
UIAlertView *credits = [[UIAlertView alloc] initWithTitle:@"Magic Piano Cheats"
message:@"Hacked by Andnix"
delegate:nil
cancelButtonTitle:@"OK"
otherButtonTitles:nil];
[credits show];
[credits release];
%orig;
}
%end
