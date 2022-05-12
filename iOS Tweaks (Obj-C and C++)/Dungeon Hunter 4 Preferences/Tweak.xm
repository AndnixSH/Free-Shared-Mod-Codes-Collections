#import <Foundation/Foundation.h>
#import "writeData.h"
#define PLIST_PATH @"/var/mobile/Library/Preferences/dh4cheats.plist" 

inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%ctor {
//4 hacks in one
if(GetPrefBool(@"kHacks"))
{
writeData(0x2DAC70,0x3800);
writeData(0x2DAC72,0x7047);

writeData(0x2DCD1C,0x3800);
writeData(0x2DCD1E,0x7047);

writeData(0x2DCD88,0x3800);
writeData(0x2DCD8A,0x7047);

writeData(0x3584F8,0x3800);
writeData(0x3584FA,0x7047);

writeData(0x3BA468,0xFF20);
writeData(0x3BA46A,0x7047);
}
else
{
writeData(0x2DAC70,0xB0B5);
writeData(0x2DAC72,0xD0F8); //D0F8A830

writeData(0x2DCD1C,0x90B5);
writeData(0x2DCD1E,0x43F2); //43F25040

writeData(0x2DCD88,0xD0F8); //D0F88800

writeData(0x3584F8,0x90B5);
writeData(0x3584FA,0x0446);

writeData(0x3BA468,0xC06B);
writeData(0x3BA46A,0x42F6);
}
}