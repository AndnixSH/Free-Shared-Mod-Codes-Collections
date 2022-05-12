//No Recoil
hex: 0300A0E31EFF2FE1

internal class PlayerAttributes : MonoBehaviour
{
    public float GetScatterRate();
}

//make object player to white color
hex: 0000A0E31EFF2FE1

public class StreamerFuncImpl : IStreamerFunc
{
    public Transform GetTargetPlayer();
}

public static class StreamerFacade
{
    public static bool RegistStreamer(StreamerType type);
}