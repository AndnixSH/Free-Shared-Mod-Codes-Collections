//CommonMessageBox
//SessionManager
//CharacterSelectSceneController reqAccountInfo()



//AndroidManager
public string xignCodeGenerateCookie(string seed)
		{
			return "NeoulDev";
		}

		[Obfuscation(Exclude = true)]
		public void xignCodeHackDetected(string param)
		{
		}
		
		public void xignCodeSetUserInfo(string usn)
		{
		}
		
public void xignCodeHandshake()
		{
			MonoSingleton<SessionManager>.instance.getXignCodeSeed(delegate(RequestResultCode requestResultCode, XignCodeSeed seed, Action retryCallback)
			{
				if (!SessionManager.isOK(requestResultCode))
				{
					return;
				}
				string cookie = this.xignCodeGenerateCookie(seed.seed);
				MonoSingleton<SessionManager>.instance.xignCodeCookieValidation(cookie, delegate(RequestResultCode requestResultCode2, PublicResult result, Action retryCallback2)
				{
					if (!SessionManager.isOK(requestResultCode2))
					{
						return;
					}
					if (result.result != 0)
					{
						return;
					}
					this.xignCodeGenerateCookie(result.seed);//
				});
			});
		}