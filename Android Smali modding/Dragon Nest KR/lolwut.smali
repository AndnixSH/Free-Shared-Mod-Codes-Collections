.class public Llolwut;
.super Ljava/lang/Object;


# static fields
.field public static byte:[B

.field public static crc:Ljava/lang/String;

.field public static bits:Ljava/lang/String;

# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const-string v0, "d39b2d06"

    sput-object v0, Llolwut;->crc:Ljava/lang/String;

    .line 10
    const-string v0, "30820307308201efa0030201020204418c3cf6300d06092a864886f70d01010b05003033310b3009060355040613026b7231123010060355040a13094163746f7a536f66743110300e06035504031307576f6f6879756e3020170d3137313131363038343832335a180f32303537313130363038343832335a3033310b3009060355040613026b7231123010060355040a13094163746f7a536f66743110300e06035504031307576f6f6879756e30820122300d06092a864886f70d01010105000382010f003082010a02820101008e07f4a6ffdd8db511a56b40bb6fd8e953bb57c80f2a47e14fa1403561fd79093732b15709b23202b3d1652401de1946af62cf17ea8366035232c0ecfc713635b8c30c3a62ed20e86ca8efb4a5b97451a38d8012f6644cab0a3f58a9324bb1dc75012a0215e10bbfddd5bc79da87c921bf233a93fd2bb6fc042b1282edccabd09aab7788b85000cd8ad1d060f3c3c1d9c105073a8ca24897dda6d9b748bf11ebd7e18d35170553dda5986e92f9e4ed7ebbf121365d43828c56ffd69c8a46bee63b40a3a9ab5094f2b0631f28868e695dbfc2eaca5443f04616ade0e66f1911ed2eeafa9df5f721aada7506107719cf909ca299cd81af3ecbc9f4c6326cad905d0203010001a321301f301d0603551d0e04160414a8820a27f04049a0714d6d85768f83fb64285fd2300d06092a864886f70d01010b050003820101006066c3e524718fb4195bf686a99e2ab2a9f6f99d1e9d01cd7a61482682ddfcc56fabc2fe2d65ddeb65138415f0797dbd6ee3555a8290ff711cd6005c6a00e7105c736ba05ca0854bb427a2487fcd9bdc7c5127fa5f3743efd5b280b828644aa2928e0ca0b1d586cf2b104d59499b92693b7af8da01ade55ce7b5b89e61da0a17962d7db49ff4b39fa214f13f7608ab009d8d1f7c5886e7c43ee5ae8ad4afc09fc2f669909c5db32863a978a8343d2c88a5735f92765ae697a813e5e2da0bdc006359dc899897457853aaebc6c540c0390a85c92272a7b214e8864cebb2fe88d3504ae9171df729b2b233e07b0a8eabca903b42e3da815f4255bab2603e9b343c"

    sput-object v0, Llolwut;->bits:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/math/BigInteger;

    sget-object v1, Llolwut;->bits:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    sput-object v0, Llolwut;->byte:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arraySig()[Landroid/content/pm/Signature;
    .locals 4
 
    .prologue
    sget-object v0, Llolwut;->bits:Ljava/lang/String;

    .line 11
    .local v0, "fake":Ljava/lang/String;
    const/4 v2, 0x1
 
    new-array v1, v2, [Landroid/content/pm/Signature;
 
    const/4 v2, 0x0
 
    new-instance v3, Landroid/content/pm/Signature;
 
    invoke-direct {v3, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
 
    aput-object v3, v1, v2
 
    .line 13
    .local v1, "sig":[Landroid/content/pm/Signature;
    return-object v1  
.end method