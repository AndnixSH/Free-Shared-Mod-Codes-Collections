#import "Hack.h"
#import "HackManager.h"

@interface HackManager () {
}
@end

@implementation HackManager
@synthesize hacks, dictPath, hackerName, hackWindow;

-(id)initWithDictPath:(NSString *)path hackerName:(NSString*)hacker coordX:(double)x coordY:(double)y andOrientation:(UIDeviceOrientation)orientation andSupportedOrientations:(struct AllowedOrientations)suppOrientations
{
    self = [super init];
    if(self)
    {
        setuid(0);
        setgid(0);

        self.hacks = [[NSMutableArray alloc]init];
        
        self.hackWindow = [[UIWindow alloc]initWithFrame:CGRectMake(x,y,70,40)];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(0,0,70,40);
        [button setTitle:@"Hacks" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(showHacks) forControlEvents:UIControlEventTouchUpInside];
        [self.hackWindow addSubview:button];

        if (orientation == UIInterfaceOrientationLandscapeLeft) 
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(-90) );
        }
        else if(orientation == UIInterfaceOrientationLandscapeRight)
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(90) );
        }
        else if(orientation == UIDeviceOrientationPortrait)
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(0) );
        }
        else if(orientation == UIDeviceOrientationPortraitUpsideDown)
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(180) );
        }

        [self.hackWindow makeKeyAndVisible];
        self.hackWindow.windowLevel = 1000000000.0f;

        [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientationDidChange:) name:UIDeviceOrientationDidChangeNotification object:nil];

        self.dictPath = path;
        self.hackerName = hacker;
        self->supportedOrientations = suppOrientations;
    }
    return self;
}

-(void)addHackWithKey:(NSString *)key andName:(NSString*)name andType:(Type)type
{
    //[self.hacks addObject:[[Hack alloc]initWithKeyName:key  andName:name andType:type andPath:self.dictPath andValue:[[NSDictionary dictionaryWithContentsOfFile:self.dictPath] valueForKey:key]]];
    [self.hacks addObject:[[Hack alloc]initWithKeyName:key andName:name andType:type andPath:self.dictPath andValue:(id)([[NSDictionary dictionaryWithContentsOfFile:self.dictPath] valueForKey:key]) ]];
}

-(id)getHackValueAtIndex:(int)index
{
    return [(Hack*)([self.hacks objectAtIndex:index]) getvalue];
}

-(void)setHackValue:(id)value atIndex:(int)index
{
    [(Hack*)([self.hacks objectAtIndex:index]) setValue:value];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
        NSString *title = alertView.title;
        NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];

        if([title isEqualToString:@"Hack"])
        {
            for(Hack *hack in self.hacks)
            {
                if([buttonTitle isEqualToString:[NSString stringWithFormat:@"Set %@", hack.hackName]])
                {
                    switch(hack.hackType)
                    {
                        case NUMBER:
                        {
                        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:hack.hackName message:[NSString stringWithFormat:@"Current set %@ value = %f",hack.hackName, [[hack getvalue]floatValue]] delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Set Hack",nil];
                        [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
                        [[alert textFieldAtIndex:0] setKeyboardType:UIKeyboardTypeNumberPad];
                        [alert show];
                        [alert release];
                        }
                        break;

                        case BOOLEAN:
                        {
                        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:hack.hackName message:[NSString stringWithFormat:@"Current set %@ value = %s", hack.hackName, [[hack getvalue]boolValue] ? "Yes" : "No"] delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes",@"No",nil];
                        [alert show];
                        [alert release];
                        }
                        break;

                        case TEXT:
                        {
                        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:hack.hackName message:[NSString stringWithFormat:@"Current set %@ value = %@",hack.hackName, [hack getvalue]] delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Set Hack",nil];
                        [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
                        [alert show];
                        [alert release];
                        }
                        break;

                        default:
                        break;
                    }
                }
            }
        }
        else
        {
            for(Hack *hack in self.hacks)
            {
                if([title isEqualToString:hack.hackName])
                {
                    switch(hack.hackType)
                    {
                        case NUMBER:
                        {
                        if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"Set Hack"])
                        {
                            UITextField *value = [alertView textFieldAtIndex:0];
                            [hack setValue:value.text];
                            [self showHacks];
                        }
                        else if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"Cancel"])
                        {
                            [self showHacks];
                        }
                        }
                        break;

                        case BOOLEAN:
                        {
                        if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"Yes"])
                        {
                            [hack setValue:[NSNumber numberWithBool:YES]];
                            [self showHacks];
                        }
                        if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"No"])
                        {
                            [hack setValue:[NSNumber numberWithBool:NO]];
                            [self showHacks];
                        }
                        else if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"Cancel"])
                        {
                            [self showHacks];
                        }
                        }
                        break;

                        case TEXT:
                        {
                        if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"Set Hack"])
                        {
                            UITextField *value = [alertView textFieldAtIndex:0];
                            [hack setValue:value.text];
                            [self showHacks];
                        }
                        else if([[alertView buttonTitleAtIndex:buttonIndex] isEqualToString:@"Cancel"])
                        {
                            [self showHacks];
                        }
                        }
                        break;

                        default:
                        break;
                    }
                }
            }
        }
}

-(void)showHacks
{
    if([self.hacks count] > 0)
    {
        NSMutableArray *otherTitles = [[NSMutableArray alloc]init];
        for(Hack *hack in self.hacks)
        {
            [otherTitles addObject:[NSString stringWithFormat:@"Set %@", hack.hackName]];
        }
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hack" message:[NSString stringWithFormat:@"Hacked by %@",self.hackerName] delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
        for( NSString *title in otherTitles) 
        {
            [alert addButtonWithTitle:title]; 
        }
        [alert show];
        [alert release];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:[NSString stringWithFormat:@"Please add more hacks %@",self.hackerName] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
}

-(void)deviceOrientationDidChange:(NSNotification *)notification
{
        //Obtaining the current device orientation
        UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
  
        if (orientation == UIInterfaceOrientationLandscapeLeft && self->supportedOrientations.landscapeLeft) 
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(-90) );
        }
        else if(orientation == UIInterfaceOrientationLandscapeRight && self->supportedOrientations.landscapeRight)
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(90) );
        }
        else if(orientation == UIDeviceOrientationPortrait && self->supportedOrientations.portrait)
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(0) );
        }
        else if(orientation == UIDeviceOrientationPortraitUpsideDown && self->supportedOrientations.portraitUpsideDown)
        {
            self.hackWindow.contentMode = UIViewContentModeCenter;
            self.hackWindow.transform = CGAffineTransformMakeRotation( DEGREES_TO_RADIANS(180) );
        }
}
@end