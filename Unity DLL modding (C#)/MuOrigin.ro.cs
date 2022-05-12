//HSGameEngine.GameEngine.Sprite
//GSprite
		public double MoveSpeed
		{
			get
			{
				return this._MovingSpeed * (double)ModMenu.dmgMulti;
			}
			set
			{
				this._MovingSpeed = value;
			}
		}

//HUDText
public void OnGUI(){
	
	ModMenu.OnGUI();
}