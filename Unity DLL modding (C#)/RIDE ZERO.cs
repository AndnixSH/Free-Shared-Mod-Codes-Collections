//Game: RIDE ZERO
//Version: 1.3.1
//APK: https://apkpure.com/ride-zero/com.loadcomplete.RideZero

//Class: MainGameController
//Load mod menu
private void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: CharacterManager
public static void Add(GameResult result)
{
	if (ModMenu.hack2)
	{
		result.rankIndex = 5;
	}
	global::Tuple<int, int> key = global::Tuple<int, int>.Get(result.musicNo, result.patternNo);
	if (GameResult.resultDictionary.ContainsKey(key))
	{
		GameResult updatedResult = GameResult.GetUpdatedResult(result, GameResult.resultDictionary[key]);
		GameResult.resultDictionary[key] = updatedResult;
		return;
	}
	GameResult.resultDictionary.Add(key, result);
	GameResult.resultList.Add(result);
}

public static GameResult Get(int musicNo, int patternNo)
{
	GameResult gameResult;
	if (GameResult.resultDictionary.TryGetValue(global::Tuple<int, int>.Get(musicNo, patternNo), out gameResult))
	{
		if (ModMenu.hack2)
		{
			gameResult.rankIndex = 5;
		}
		return gameResult;
	}
	gameResult = new GameResult
	{
		musicNo = musicNo,
		patternNo = patternNo
	};
	if (ModMenu.hack2)
	{
		gameResult.rankIndex = 5;
	}
	return gameResult;
}

private static GameResult GetUpdatedResult(GameResult result, GameResult previousResult)
{
	if (ModMenu.hack2)
	{
		result.rankIndex = 5;
	}
	GameResult gameResult = result.Clone();
	if (gameResult.score < previousResult.score)
	{
		gameResult.score = previousResult.score;
		gameResult.judgeTable = previousResult.judgeTable;
	}
	if (gameResult.maxCombo < previousResult.maxCombo)
	{
		gameResult.maxCombo = previousResult.maxCombo;
	}
	if (gameResult.enemyBreakCount < previousResult.enemyBreakCount)
	{
		gameResult.enemyBreakCount = previousResult.enemyBreakCount;
	}
	if (result.isCleared || previousResult.isCleared)
	{
		gameResult.isCleared = true;
	}
	if (previousResult.rankIndex > gameResult.rankIndex)
	{
		gameResult.rankIndex = previousResult.rankIndex;
	}
	if (previousResult.rating > gameResult.rating)
	{
		gameResult.rating = previousResult.rating;
	}
	List<int> list = result.acquiredMedalIds.ToList<int>();
	foreach (int item in previousResult.acquiredMedalIds)
	{
		if (!list.Contains(item))
		{
			list.Add(item);
		}
	}
	list.Sort();
	gameResult.acquiredMedalIds = list.ToArray();
	return gameResult;
}