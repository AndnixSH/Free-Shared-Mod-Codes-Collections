#import <Foundation/Foundation.h>
#define PLIST_PATH @"/var/mobile/Library/Preferences/spotihacks.plist" 

inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

//---------- Allow seeking ----------//
%hook SPTPlayerRestrictions
-(bool)disallowSeeking 
{
	if(GetPrefBool(@"kSeeking")) //1 seeking
	{
		return false;
	}
	return %orig;
}

-(id)disallowSeekingReasons
{
	return NULL;
}

//---------- Allow skipping ----------//
-(id)disallowSkippingToNextTrackReasons 
{
	if(GetPrefBool(@"kSkipping")) //2 skipping
	{
		return NULL;
	}
	return %orig;
}

-(id)disallowSkippingToPreviousTrackReasons 
{
	if(GetPrefBool(@"kSkipping")) //2 skipping
	{
		return NULL;
	}
	return %orig;
}

-(void)setDisallowSkippingToPreviousTrackReasons:(id)fp8
{
	if(GetPrefBool(@"kSkipping")) //2 skipping
	{
		fp8 = NULL;
	}
	%orig(fp8);
}

//---------- Allow peeking ----------//
-(bool)disallowPeekingAtNextTrack
{
	if(GetPrefBool(@"kPeeking")) //5 Peeking
	{
		return false;
	}
	return %orig;
}

-(id)disallowPeekingAtNextTrackReasons
{
	if(GetPrefBool(@"kPeeking")) //5 Peeking
	{
		return NULL;
	}
	return %orig;
}

//---------- Allow TogglingShuffle ----------//
-(bool)disallowTogglingShuffle
{
	if(GetPrefBool(@"kTogglingShuffle")) //3 TogglingShuffle
	{
		return false;
	}
	return %orig;
}

-(id)disallowTogglingShuffleReasons
{
	if(GetPrefBool(@"kTogglingShuffle")) //3 TogglingShuffle
	{
		return NULL;
	}
	return %orig;
}
%end

%hook SPTNowPlayingModel
-(bool)disallowTogglingShuffle
{
	if(GetPrefBool(@"kTogglingShuffle")) //3 TogglingShuffle
	{
		return false;
	}
	return %orig;
}
	
//---------- Allow peeking ----------//
-(bool)disallowPeekingAtNextTrack
{
	if(GetPrefBool(@"kPeeking")) //5 Peeking
	{
		return false;
	}
	return %orig;
}
%end

//---------- Allow seeking 2 ----------//
%hook SPTNowPlayingTrackPosition
-(bool)disallowSeeking 
{
	if(GetPrefBool(@"kSeeking")) //1 seeking
	{
		return false;
	}
	return %orig;
}
%end

//---------- Disable Shuffle ----------//
%hook ShuffleFeatureImplementation
-(id)baseUI
{
	if(GetPrefBool(@"kNoShuffle")) //4 NoShuffle
	{
		return NULL;
	}
	return %orig;
}
%end

%hook SPTActionButton
-(void)setFrame:(CGRect)fp8
{
	if(GetPrefBool(@"kNoShuffle")) //4 NoShuffle
	{
		
	}
	%orig;
}
%end

//---------- No ads ----------//
%hook FBAdView
-(void)setFrame:(CGRect)fp8
{
}
%end

%hook AdController
-(void)playAdFromLink:(id)fp8
{
	fp8 = NULL;
	%orig(fp8);
}
%end

%hook SPTAdsManager
-(void)adsViewModel:(id)arg1 shouldPlayAds:(bool)arg2
{
	arg1 = NULL;
	arg2 = false;
}
%end

//---------- No jailbreak detection ----------//
%hook MATTracker
-(bool)shouldDetectJailbroken
{
	return false;
}
%end

%hook CSComScore
+(bool)isJailbroken
{
	return false;
}
%end

%hook CSCore
+(bool)isJailBroken
{
	return false;
}
%end

%hook GADDevice
+(bool)isJailbroken
{
	return false;
}
%end