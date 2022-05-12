public void UpdateAimBot()
    {
        if (Time.time - this.HitTime < 0.4f)
        {
            return;
        }
        if (Bs._Loader.EnableProfiler)
        {
        }
        Vector3 eulerAngles = Bs._ObsCamera.transform.eulerAngles;
        if (Bs._Game.AimX > 0f || Bs._Game.AimY > 0f)
        {
            if (this.timer.TimeElapsed(100))
            {
                this.AimBotenemy = base.enemies.FirstOrDefault((Shared a) => a.visible && Bs.ZeroY(Camera.main.ScreenToWorldPoint(new Vector3(Bs._ObsCamera.ScreenCursor.x, Bs._ObsCamera.ScreenCursor.y, (a.pos - Bs._ObsCamera.pos).magnitude)) - a.hpos).magnitude < 2f && base.CheckRay(a.hpos, 1025, 0f));
            }
            if (this.AimBotenemy != null)
            {
                Vector3 eulerAngles2 = Quaternion.LookRotation(this.AimBotenemy.hpos - Camera.main.transform.position).eulerAngles;
                Vector3 b = new Vector3(Mathf.DeltaAngle(eulerAngles.x, eulerAngles2.x), Mathf.DeltaAngle(eulerAngles.y, eulerAngles2.y), 0f);
                float y = b.y * Mathf.Min(0.04f, Time.deltaTime) * (Bs._Game.AimX * 2f) / Mathf.Max(15f, (base.pos - this.AimBotenemy.pos).x) * 10f;
                float x = b.x * Mathf.Min(0.04f, Time.deltaTime) * (Bs._Game.AimY * 2f) / Mathf.Max(15f, (base.pos - this.AimBotenemy.pos).y) * 10f;
                b = new Vector3(x, y, 0f);
                Bs.MouseDelta += b;
            }
        }
        if (Bs._Loader.EnableProfiler)
        {
        }
    }
	
if (Bs.Android && Bs._Player == this && !Bs._ObsCamera.topDown)
            {
                this.UpdateAimBot();
            }