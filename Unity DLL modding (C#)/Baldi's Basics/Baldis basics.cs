

Process[] running = Process.GetProcesses();
        foreach (Process process in running)
        {
            try
            {
                if (process.ProcessName == "Calculator")
                {
                    UnityEngine.Debug.Log("calc");
                }
                else
                {
                    UnityEngine.Debug.Log("no calc");
                }
            }
            catch (Exception ex)
            {
                UnityEngine.Debug.Log(ex.ToString());
                //do nothing
                //UnityEngine.Debug.Log("***** InvalidOperationException was caught!");
            }
        }


if (this.jumpDelay > 0f)
		{
			this.jumpDelay -= Time.deltaTime;
		}
		