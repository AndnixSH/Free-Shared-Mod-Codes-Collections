using System;
using System.Collections;
using UnityEngine;

public class AutoPlayer : MonoBehaviour
{
	private void Awake()
	{
		AutoPlayer.Instance = this;
	}

	private void Start()
	{
		Screen.sleepTimeout = -1;
	}

	private void OnGUI()
	{
		if (PlayerInfo.Instance.m_UserCode >= 3)
		{
			if (GUI.Button(new Rect(20f, 20f, 150f, 100f), this.tempStr))
			{
				if (this.m_bAutoPlayMode)
				{
					this.m_bAutoPlayMode = false;
					this.tempStr = "turn on the AutoMode";
				}
				else
				{
					this.m_bAutoPlayMode = true;
					this.tempStr = "turn off the AutoMode";
				}
			}
			if (GUI.Button(new Rect(200f, 20f, 150f, 100f), "test ipv6"))
			{
				base.StartCoroutine(this.testIPv6());
			}
		}
	}

	private IEnumerator testIPv6()
	{
		WWW www = new WWW("http://ipv6test.google.com/");
		yield return www;
		Debug.Log("#### IPv6 test" + www.text);
		yield break;
	}

	private void DoAutoPlay()
	{
		Hero hero = GameManager.Instance.m_Hero;
		if (this.m_autoPlayTime + this.m_autoPlayResponseTime + this.m_fRandomGap < Time.unscaledTime)
		{
			this.m_autoPlayTime = Time.unscaledTime;
			this.m_fRandomGap = UnityEngine.Random.Range(0f, this.m_randomResponseGap);
			if (BrawlController.IsBrawling)
			{
				if (BrawlController.Instance.Brawler.IsDirectionLeft)
				{
					hero.GetHeroInput(Unit.eDirection.Right);
				}
				else
				{
					hero.GetHeroInput(Unit.eDirection.Left);
				}
			}
			else
			{
				Unit.eDirection eDirection = Unit.eDirection.None;
				bool flag = GameManager.Instance.IsBlueOn;
				bool flag2 = GameManager.Instance.IsRedOn;
				if (flag)
				{
					flag = this.IsNotAngel(GameManager.Instance.GetTagetEnemy(Unit.eDirection.Left, true));
				}
				if (flag2)
				{
					flag2 = this.IsNotAngel(GameManager.Instance.GetTagetEnemy(Unit.eDirection.Right, true));
				}
				if (flag && flag2)
				{
					if (UnityEngine.Random.Range(0, 2) == 0)
					{
						eDirection = Unit.eDirection.Right;
					}
					else
					{
						eDirection = Unit.eDirection.Left;
					}
				}
				else if (flag2)
				{
					eDirection = Unit.eDirection.Right;
				}
				else if (flag)
				{
					eDirection = Unit.eDirection.Left;
				}
				if (eDirection != Unit.eDirection.None)
				{
					hero.GetHeroInput(eDirection);
				}
			}
		}
	}

	private bool IsNotAngel(Unit unit)
	{
		Enemy enemy = unit as Enemy;
		return !(enemy != null) || !enemy.IsAngel;
	}

	private void Update()
	{
		if (this.m_bAutoPlayMode)
		{
			this.DoAutoPlay();
		}
		if (this.m_bFullHP && GameManager.Instance.m_Hero)
		{
			GameManager.Instance.m_Hero.Life = 1000f;
		}
	}

	public static AutoPlayer Instance;

	private string tempStr = "turn on the AutoMode";

	public bool m_bAutoPlayMode = true;

	private float m_autoPlayTime;

	public float m_autoPlayResponseTime;

	public float m_randomResponseGap;

	private float m_fRandomGap;

	public bool m_bFullHP;
}
