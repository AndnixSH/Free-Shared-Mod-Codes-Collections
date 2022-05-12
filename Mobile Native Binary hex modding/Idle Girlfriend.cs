//Game: Idle Girlfriend
//Version: v2.4
//APK: https://apkpure.com/idle-girlfriend/com.showtime.vgirl

//Class: game_player
public class game_player
{	
	public bool can_buy(int gold);
	// ARM Offset: 0x4D37D8
	// ARM64 Offset: 0x81B768
	// x86 Offset: 0x484DF0
	
	public bool isDiaEnough(int need, optional GameObject call, optional s_t_item item, optional string Okmessage, optional string Nomessage);
	// ARM Offset: 0x4D4104
	// ARM64 Offset: 0x81BF58
	// x86 Offset: 0x48564D
	
	//Arm: 01 00 a0 e3 1e ff 2f e1
	//ARM64: 20 00 80 D2 C0 03 5F D6
	//x86: b8 01 00 00 00 c3
	
	-------------------------------
	
	public bool cost_dia(int dia);
	// ARM Offset: 0x31F8B0
	// ARM64 Offset: 0x31F8B0
	// x86 Offset: 0x2E0CC1
	
	public bool cost_dia(int dia, GameObject call);
	// ARM Offset: 0x31FDF4
	// ARM64 Offset: 0x31F8B0
	// x86 Offset: 0x2E1193
	
	public bool cost_dia(int dia, string OKmessage, string Nomessage);
	// ARM Offset: 0x31FE40
	// ARM64 Offset: 0x31F8B0
	// x86 Offset: 0x2E11EE
	
	//Arm: 00 00 a0 e3 1e ff 2f e1
	//ARM64: 00 00 80 D2 C0 03 5F D6
	//x86: b8 00 00 00 00 c3
}

Arm: FF 0F 0F E3 1e ff 2f e1
x86: b8 3f 42 0f 00 c3