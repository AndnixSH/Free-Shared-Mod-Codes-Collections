#import <CoreGraphics/CoreGraphics.h>	//Imported for the CGAffineTransformMakeRotation function

struct AllowedOrientations
{
    BOOL landscapeLeft;
    BOOL landscapeRight;
    BOOL portrait;
    BOOL portraitUpsideDown;
};

struct AllowedOrientations MakeInitialOrientations()
{
    struct AllowedOrientations orientations;
    orientations.landscapeLeft = false;
    orientations.landscapeRight = false;
    orientations.portrait = false;
    orientations.portraitUpsideDown  = false;

    return orientations;
}

@interface HackManager : NSObject <UIAlertViewDelegate>
{
    NSMutableArray *hacks;				//Contains all the Hack objects
    NSString *dictPath;				//The path of the plist file
    NSString *hackerName;				//The name of the hacker for use in the alertview
    UIWindow *hackWindow;				//A window which contains a button to reopen the patcher menu
    struct AllowedOrientations supportedOrientations;	//Holds all the supported orientations of the hacked app.
}

- (id)initWithDictPath:(NSString *)path hackerName:(NSString *)hacker coordX:(double)x coordY:(double)y andOrientation:(UIDeviceOrientation)orientation andSupportedOrientations:(struct AllowedOrientations)suppOrientations;
- (void)addHackWithKey:(NSString *)key andName:(NSString *)name andType:(Type)type;	//Adds a new hack to the hacks array
- (id)getHackValueAtIndex:(int)index;							//Returns the value of a certain hack in the hacks array
- (void)setHackValue:(id)value atIndex:(int)index;					//Sets the value of a certain hack in the hacks array
- (void)showHacks;										//Shows the patcher's main menu (main alert)
- (void)deviceOrientationDidChange:(NSNotification *)notification;			//Updates the hackWindow's rotation based on the device orientation

@property (nonatomic, retain) NSMutableArray *hacks;
@property (nonatomic, retain) NSString *dictPath, *hackerName;
@property (nonatomic, retain) UIWindow *hackWindow;
@end