// Namespace: Sinsi.PotionMaker.Core
public sealed class Workshop : IBinarySerializable // TypeDefIndex: 3514
{
	public void SpendTicket(int amount); // Offset: 0x4FAAD8 1e ff 2f e1
	private void SpendTicket(EInt32 ticket, int amount); // Offset: 0x50CCBC 1e ff 2f e1
	public void SpendCoin(BigInteger amount); // Offset: 0x4FE384 1e ff 2f e1
	public void SpendRuby(int amount); // Offset: 0x50CD5C 1e ff 2f e1
	private void SpendRuby(EInt32 ruby, int amount); // Offset: 0x50CE78
	
	public bool IsPurchased(CostumeModel costume); // Offset: 0x501360 01 00 a0 e3 1e ff 2f e1
	public bool IsPurchasedCostume(int costumeId); // Offset: 0x501674 
}

