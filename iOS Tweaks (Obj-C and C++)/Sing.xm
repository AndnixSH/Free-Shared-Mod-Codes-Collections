//Package: com.smule.sing

#import <UIKit/UIKit.h>

//---------- ProfilePerformancesDataController ----------//
%hook ProfilePerformancesDataController
-(bool)isVIP
{
	return true;
}
%end

//---------- PurchaseVIPView ----------//
%hook PurchaseVIPView
-(bool)isVipSong
{
	return true;
}
%end

//---------- SNPAccountIcon ----------//
%hook SNPAccountIcon
-(bool)isVIP
{
	return true;
}

-(bool)isSubscriber
{
	return true;
}

%end

//---------- MagicSubscriptionManager ----------//
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

-(bool)isPromoSubscription
{
	return true;
}
%end

//---------- OwnedObjectManager ----------//
%hook OwnedObjectManager
-(bool) isOwned:(id)fp8
{
    return true;
    %orig(fp8);
}
%end

//---------- AlbumArtView ----------//
%hook AlbumArtView
-(bool)canPlay
{
	return true;
}
%end