using System;
using TMPro;
using UnityEngine;

public class JumpRopeScript : MonoBehaviour
{
	public JumpRopeScript()
	{
	}

	private void OnEnable()
	{
		this.jumpCongratsDelay = 1f;
		this.jumpDelay = 8f;
		this.jumpDelay2 = 2f;
		this.ropeHit = true;
		this.jumpStarted = false;
		this.jumps = 0;
		this.jumpCount.text = 0 + "/10";
		this.playtime.audioDevice.PlayOneShot(this.playtime.aud_Instrcutions);
	}

	private void Update()
	{
		if (this.jumpDelay > 0f)
		{
			this.jumpDelay -= Time.deltaTime;
		}
		else if (this.jumpDelay2 > 0f)
		{
			if (!this.isReadyGoPlayed)
			{
				this.playtime.audioDevice.PlayOneShot(this.playtime.aud_ReadyGo);
				this.isReadyGoPlayed = true;
			}
			this.jumpDelay2 -= Time.deltaTime;
		}
		else if (this.isCongrats)
		{
			this.playtime.audioDevice.Stop();
			this.playtime.audioDevice.PlayOneShot(this.playtime.aud_Congrats);
			this.ps.DeactivateJumpRope();
		}
		else if (!this.jumpStarted)
		{
			this.jumpStarted = true;
			this.ropePosition = 1f;
			this.rope.SetTrigger("ActivateJumpRope");
			this.ropeHit = false;
		}
		if (this.ropePosition > 0f)
		{
			this.ropePosition -= Time.deltaTime;
			return;
		}
		if (!this.ropeHit)
		{
			this.RopeHit();
		}
	}

	private void RopeHit()
	{
		this.ropeHit = true;
		if (this.cs.jumpHeight <= 0.2f)
		{
			this.Fail();
		}
		else
		{
			this.Success();
		}
		this.jumpStarted = false;
	}

	private void Success()
	{
		this.playtime.audioDevice.Stop();
		if (this.jumps < 10)
		{
			this.playtime.audioDevice.PlayOneShot(this.playtime.aud_Numbers[this.jumps]);
			this.jumps++;
			this.jumpCount.text = this.jumps + "/10";
			this.jumpDelay = 0.5f;
			if (this.jumps == 10)
			{
				this.jumpDelay = 1.5f;
				this.isCongrats = true;
			}
		}
	}

	private void Fail()
	{
		this.jumps = 0;
		this.jumpCount.text = this.jumps + "/10";
		this.jumpDelay = 8f;
		this.playtime.audioDevice.PlayOneShot(this.playtime.aud_Oops);
	}

	public TMP_Text jumpCount;

	public Animator rope;

	public CameraScript cs;

	public PlayerScript ps;

	public PlaytimeScript playtime;

	public GameObject mobileIns;

	public int jumps;

	public float jumpDelay;

	public float ropePosition;

	public bool ropeHit;

	public bool jumpStarted;

	public float jumpDelay2;

	public bool isReadyGoPlayed;

	public bool isPlayed10;

	public float jumpCongratsDelay;

	public bool isCongrats;
}
