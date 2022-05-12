#define DEGREES_TO_RADIANS(x) (x * M_PI/180.0) //Converts degrees to radians for cg rotations

typedef enum
{
    NUMBER = 1, //The hack is a number hack (int, float, long, etc)
    BOOLEAN,	//The hack is a boolean hack (yes/no)
    TEXT		//The hack is a text hack (NSString)
}Type;

@interface Hack : NSObject
{
    NSString *hackKeyName;	//The name of the hack's key to search for it's value in the plist
    NSString *plistPath;	//The path to the plist
    NSString *hackName;		//The name of the hack that will be used in the hack. Used for the alertview.
    id hackValue;			//The hack's value. An id containing an NSNumber in case of a Number or Boolean hack, or an NSString in case of a text hack
    Type hackType;			//Type of hack. (NUMBER, BOOLEAN, OR TEXT)
}

- (id)initWithKeyName:(NSString *)keyName andName:(NSString*)name andType:(Type)type andPath:(NSString *)path andValue:(id)val;	//Initializes a new hack object
- (id)getvalue;	//retrieves the hack's value
- (void)setValue:(id)val;	//sets the hack's value

@property (nonatomic, retain) NSString *hackKeyName, *plistPath, *hackName;
@property (nonatomic, assign) Type hackType;
@property (nonatomic, retain) id hackValue;
@end