//Package: com.smule.guitar2

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

//---------- ProfilePicButton ----------//
%hook ProfilePicButton
-(bool)allowVIPBadge
{
	return true;
}
%end

//---------- SongInfo ----------//
%hook SongInfo
-(bool)isSongUnlockedForNonSubscribers
{
	return true;
}
%end