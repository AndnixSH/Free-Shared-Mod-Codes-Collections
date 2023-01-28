//x86_64
mov eax, 1
Ret

b8 01 00 00 00 c3

mov eax, 0
Ret

b8 00 00 00 00 c3

//namespace UNO.AI
//public class CardPlayPriority : Metadata
[Token(Token = "0x6005E24")]
[Address(RVA = "0x186BD40", Offset = "0x186AD40", VA = "0x18186BD40")]
private bool processJoker(List<Card> CanPlaycards)
{
	return default(bool);
}

[Token(Token = "0x6005E23")]
[Address(RVA = "0x186BC80", Offset = "0x186AC80", VA = "0x18186BC80")]
private bool processDraw2(List<Card> CanPlaycards)
{
	return default(bool);
}

[Token(Token = "0x6005E21")]
[Address(RVA = "0x186BFF0", Offset = "0x186AFF0", VA = "0x18186BFF0")]
private bool processSkip(List<Card> CanPlaycards)
{
	return default(bool);
}

[Token(Token = "0x6005E22")]
[Address(RVA = "0x186BF30", Offset = "0x186AF30", VA = "0x18186BF30")]
private bool processReverse(List<Card> CanPlaycards)
{
	return default(bool);
}

[Address(RVA = "0x186C0B0", Offset = "0x186B0B0", VA = "0x18186C0B0")]
private bool processWild(List<Card> CanPlaycards)
{
	
}

// UNO.OnWildDraw4Event
[Token(Token = "0x1700071A")]
[Attribute(Name = "EventProperty", RVA = "0x1AC8C0", Offset = "0x1ABEC0")]
public bool IsBluff
{
	[Token(Token = "0x6003BD9")]
	[Address(RVA = "0x487DE0", Offset = "0x486DE0", VA = "0x180487DE0")]
	[Attribute(Name = "CompilerGeneratedAttribute", RVA = "0x53340", Offset = "0x52940")]
	get
	{
		
	}
	[Token(Token = "0x6003BDA")]
	[Address(RVA = "0x487F20", Offset = "0x486F20", VA = "0x180487F20")]
	[Attribute(Name = "CompilerGeneratedAttribute", RVA = "0x53340", Offset = "0x52940")]
	set
	{
	}
}

public bool IsAnyoneChallenged
{
	[Token(Token = "0x6003BDB")]
	[Address(RVA = "0x487DF0", Offset = "0x486DF0", VA = "0x180487DF0")]
	[Attribute(Name = "CompilerGeneratedAttribute", RVA = "0x53340", Offset = "0x52940")]
	get
	{
		
	}
	[Token(Token = "0x6003BDC")]
	[Address(RVA = "0x487F30", Offset = "0x486F30", VA = "0x180487F30")]
	[Attribute(Name = "CompilerGeneratedAttribute", RVA = "0x53340", Offset = "0x52940")]
	set
	{
	}
}