using System;
using System.Collections.Generic;
using UnityEngine;

namespace Yousician.Revenue.System.Ads
{
	[Serializable]
	public class PlaytimeLimitationStatus
	{
		public PlaytimeLimitationStatus(IOIMHHNINFF PKAINFKHCFG, TimeSpan BPBCAIANFPO, TimeSpan FCKMNPMEMEE, IReadOnlyList<int> AMMLJLJMPOO)
		{
			this.ElapsedTime = PKAINFKHCFG.GNMHEGKPMNC;
			this.TimeToResetLimitation = BPBCAIANFPO;
			this.LimitationsInSeconds = AMMLJLJMPOO;
			this.CurrentLimitationIndex = Mathf.Clamp(PKAINFKHCFG.KCJBNBDLKCN, 0, this.LimitationsInSeconds.Count);
			this.TotalAllowedTime = FCKMNPMEMEE;
			
			//this.IsPlaytimeAvailable = (this.ElapsedTime < this.TotalAllowedTime);
			this.IsPlaytimeAvailable =  true; //Unlimited time
		}
	}
}
