//Package: com.miniclip.Fragger, com.miniclip.FraggerHD
//Credit: ioscheaters

#include <substrate.h> // this just loads mobile substrate.
#define PLIST_PATH @"/var/mobile/Library/Preferences/com.ioscheaters.Fragger.plist"

@class HackClass;
HackClass *hack = nil;

@interface HackClass : NSObject <UIAlertViewDelegate>
{
int ScoreHack;
}
-(int)score;
-(void)setScore:(int)score;
@end

@implementation HackClass
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if([alertView.title isEqualToString:@"Hack Test"])
	{
		if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"Set Hack"])
		{
			UITextField *value = [alertView textFieldAtIndex:0];

			ScoreHack = [value.text intValue];
		}
		UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Score Value" message:[NSString stringWithFormat:@"Value Set To: %i",ScoreHack] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alert show];
	}
}

-(int)score
{
return ScoreHack;
}

-(void)setScore:(int)score
{
ScoreHack = score;
}
@end

%hook FraggerAppDelegate
- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12
{
	hack = [[HackClass alloc]init];
	[hack setScore:0];
	[hack setScore:[[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:@"kScore"]intValue]];
	UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hack Test" message:[NSString stringWithFormat:@"Set the score per letter you want or press cancel for the settings value. By Brave \n Value in settings: %i",[hack score]] delegate:hack cancelButtonTitle:@"Cancel" otherButtonTitles:@"Set Hack",nil];
	[alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
	[[alert textFieldAtIndex:0] setKeyboardType:UIKeyboardTypeNumberPad];
	[alert show];
	return %orig;
}
%end

%hook LevelScore
- (int)value
{
	return [hack score];
}

- (void)setValue:(int)fp8
{
	%orig([hack score]);
}
%end