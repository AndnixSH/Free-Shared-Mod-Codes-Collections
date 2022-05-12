//Game: Triple Chain Strategy & Puzzle RPG (unreleased)
//Version: 0.972.19
//APK: https://apkpure.com/triple-chain-strategy-puzzle-rpg-unreleased/com.senses.triplechain

// Namespace: Eureka
public abstract class ActorBehavior : BaseMonoBehaviour
{
	public virtual float CalculateDamage(Actor target, ref bool isCritical, float skillDmgFactor, HitType hitType) { }
}