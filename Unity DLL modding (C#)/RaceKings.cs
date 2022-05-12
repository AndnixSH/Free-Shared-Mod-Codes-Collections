//Class: CarController
private float GetTargetDriftAngleSpeedMul(float driftAngle, float targetDriftAngle)
{
	if (targetDriftAngle >= 0f)
	{
		this.DriftZoneAngleError = driftAngle - targetDriftAngle;
	}
	else
	{
		this.DriftZoneAngleError = targetDriftAngle - driftAngle;
	}
	this.ScaledDriftZoneAngleError = this.DriftZoneAngleError;
	if (!this.HumanPlayer)
	{
		this.ScaledDriftZoneAngleError *= 99f; //High drift
	}
	float a = this.Upgrades.DriftZoneAngleToSpeedMultiplier.Evaluate(this.ScaledDriftZoneAngleError);
	return Mathf.Min(a, 1f);
}