//Game: ジャンプ 実況ジャンジャンスタジアム
//Version: 1.1.9
//APK: https://apkpure.com/%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%97-%E5%AE%9F%E6%B3%81%E3%82%B8%E3%83%A3%E3%83%B3%E3%82%B8%E3%83%A3%E3%83%B3%E3%82%B9%E3%82%BF%E3%82%B8%E3%82%A2%E3%83%A0/jp.konami.wjjjs

// Namespace: AppDbTable
public class AppMasterCharaParamData : aeBase, AppTableClassInterface
{
	public int get_btl_attack();
	// ARM Offset: 0xAEB8D4 Patch: 5f 0c a0 e3
	// x86 Offset: 0xA48366 Patch: b8 00 5f 00 00 c3
}

MOV	R0, #0x5F00

mov    eax,0x5f00
ret