using System;
using UnityEngine;

public class Cheat : MonoBehaviour
{
	public bool cheatOn
	{
		get
		{
			return this.aniTypeIndex != -1;
		}
	}

	private void Awake()
	{
		Cheat.Instance = this;
	}

	private void Update()
	{
		if (this.cheatOn)
		{
			Config.Instance.enemyMaxCount = 0;
			Config.Instance.probabilityImpaleActive = 0f;
			Config.Instance.probabilityXyActiveActive = 0f;
			Config.Instance.probabilityEnvActive = 0f;
			Config.Instance.probabilityFatalityActive = 0f;
			Config.Instance.probabilityFatalityWeaponActive = 0f;
			Config.Instance.probabilityDelayedStrikeActive = 0f;
			Config.Instance.probabilityPowerHitActive = 0f;
			Config.Instance.probabilityStyleHitActiveActive = 0f;
			Config.Instance.probabilityDeathFaceplant = 0f;
			Config.Instance.probabilityDeathFlip = 0f;
			Config.Instance.probabilityDeathSplat = 0f;
			Config.Instance.probabilityDeathFly = 0f;
			Config.Instance.probabilityDeathDropObject = 0f;
			if (this.noDamage)
			{
				GameManager.Instance.m_Hero.Life = 1000f;
			}
		}
	}

	public static Cheat Instance;

	public int aniTypeIndex = -1;

	public bool noDamage = true;
}
