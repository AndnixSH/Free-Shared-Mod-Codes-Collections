//DatosDeUsuario
	public int Jugador_Exp
	{
		get
		{
			return this._Jugador_Exp = 777777;
		}
	}

	public int Coins
	{
		get
		{
			return this._coins = 9999999;
		}
	}

	public int Gemas
	{
		get
		{
			return this._gemas = 888888;
		}
	}
	
//GlobalBattleManager
	public void AplicarDamageAPlayer(float damage, Constantes.TIPO_ELEMENTO enementoEnemigo, bool esMagico)
	{
		this._playerController._userManager._numeroDeGolpes++;
		bool aumentoDamagePorElemento = false;
		float num = damage * 0f;
		if (this.AumentoDeDamagePorElemento(this._playerController._userManager.Elemento, enementoEnemigo))
		{
			aumentoDamagePorElemento = true;
			num += num * 1.5f;
		}
		this._playerController.DecreasedVida(num, aumentoDamagePorElemento, esMagico);
	}
	
	public void AplicarDamageAEnemigo(Enemigo enemigo, float damage, Constantes.TIPO_ELEMENTO elementoHeroe, bool esCritico, float damageCritico)
	{
		if (enemigo != null)
		{
			bool aumentoPorElemento = false;
			bool critico = false;
			float num = damage * 100f;
			if (esCritico)
			{
				critico = true;
				num += num * damageCritico * 100f;
			}
			if (this.AumentoDeDamagePorElemento(enemigo.Tipo, elementoHeroe))
			{
				aumentoPorElemento = true;
				num += num * 1.5f * 100f;
			}
			FloatingTextController.CreateFloatingPopUpConTodo(num, enemigo.transform, aumentoPorElemento, critico);
			enemigo.DecreasedVida(num);
		}
	}