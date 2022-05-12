#import "Hack.h"

@interface Hack () {
}
@end

@implementation Hack
@synthesize hackKeyName, plistPath, hackName, hackType, hackValue;

-(id)initWithKeyName:(NSString *)keyName andName:(NSString*)name andType:(Type)type andPath:(NSString *)path andValue:(id)val
{
    self = [super init];
    if(self)
    {
        self.hackKeyName = keyName;
        self.plistPath = path;
        self.hackValue = val;
        self.hackName = name;
        self.hackType = type;
    }
    return self;
}

-(id)getvalue
{
    return self.hackValue;
}

-(void)setValue:(id)val
{
    self.hackValue = val;
    NSMutableDictionary *temp = [NSMutableDictionary dictionaryWithContentsOfFile:plistPath];
    [temp setValue:val forKey:self.hackKeyName];
    [temp writeToFile:plistPath atomically:YES];	//Update the plist file
}
@end