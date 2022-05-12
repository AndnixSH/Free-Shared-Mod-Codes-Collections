/**********************************

HOOK IL2CPP

***********************************/

void* (*GetHeadTF)(void* player) = (void*(*)(void*))getRealOffset(0xAE5868);

void* (*GetHipTF)(void* player) = (void*(*)(void*))getRealOffset(0xAE5994);

void* (*CurrentMatch)() = (void*(*)())getRealOffset(0x25C277C); //static QG CurrentMatch()

void* (*GetLocalPlayer)(void* match) = (void*(*)(void *))getRealOffset(0x12B1178); //public Player ^djkVy()

void* (*getPlayerByIndex)(void* match, uint8_t index) = (void*(*)(void *, uint8_t))getRealOffset(0x12B1600); //public Player |`pUJY(byte cA^OZCl)

int (*get_CurHP)(void* player) = (int(*)(void *))getRealOffset(0xAA1A74);

void* (*get_PlayerID)(void* player) = (void*(*)(void *))getRealOffset(0xAAC610);

void* (*get_NickName)(void* player) = (void*(*)(void *))getRealOffset(0xAAC720);

bool (*IsVisible)(void* player) = (bool(*)(void *))getRealOffset(0xAAEB6C);

bool (*IsFiring)(void* player) = (bool(*)(void *))getRealOffset(0xAC77A8);

bool (*get_IsSighting)(void* player) = (bool(*)(void *))getRealOffset(0xAF8410);

bool (*IsLocalPlayer)(void* player) = (bool(*)(void *))getRealOffset(0xAAF4E8);

bool (*IsLocalTeammate)(void* player) = (bool(*)(void *))getRealOffset(0xAB4ABC);

bool (*get_IsDieing)(void* player) = (bool(*)(void *))getRealOffset(0xAACEC8);

bool (*IsCrouching)(void* player) = (bool(*)(void *))getRealOffset(0xAB60C4);

bool (*get_IsSkyDiving)(void* player) = (bool(*)(void *))getRealOffset(0xAAE66C);

bool (*get_IsSkyDashing)(void* player) = (bool(*)(void *))getRealOffset(0xAAEA48);

bool (*get_IsParachuting)(void* player) = (bool(*)(void *))getRealOffset(0xAAE264);

bool (*IsSameTeam)(void* p1, void* p2) = (bool(*)(void*, void*))getRealOffset(0x25C39F8);

void (*SetAimRotation)(void* player, Quaternion rotation) = (void(*)(void *, Quaternion))getRealOffset(0xAAD320);

void* (*Component_get_transform)(void* comp) = (void*(*)(void *))getRealOffset(0x233546C);

Vector3 (*Transform_get_position)(void* trans) = (Vector3(*)(void *))getRealOffset(0x2908DF8);

Vector3 (*Transform_get_forward)(void* trans) = (Vector3(*)(void *))getRealOffset(0x2909524);

void* (*get_main)() = (void*(*)())getRealOffset(0x2330740); // UnityEngine.Camera

void (*ShowPopupMessage)(void* gamescene, void* message, float duration) = (void(*)(void *, void*, float))getRealOffset(0x1090B8C);

void* UIInGameScene = NULL;

void* (*il2cpp_string_new)(const char* string) = (void*(*)(const char*))getRealOffset(0x296B4A4);

void* (*String_Concat)(void* string1, void* string2, void* string3) = (void*(*)(void*,void*, void*))getRealOffset(0x1DE15F4);

int (*Screen_get_width)() = (int(*)())getRealOffset(0x2696BB0);

int (*Screen_get_height)() = (int(*)())getRealOffset(0x2696C40);

Vector3 (*WorldToScreenPoint)(void* camera, Vector3 position) = (Vector3 (*)(void*, Vector3)) getRealOffset(0x2330150);

class Rect {
public:
    float x;
    float y;
    float width;
    float height;

    Rect(float x, float y, float width, float height){
        this->x = x;
        this->y = y;
        this->width = width;
        this->height = height;
    }
};

class Color {
public:
    float r;
    float g;
    float b;
    float a;

    Color(float r, float g, float b, float a){
        this->r = r;
        this->g = g;
        this->b = b;
        this->a = a;
    }
};

Vector3 GetHeadPosition(void* player){
	return Transform_get_position(*(void**) ((uint64_t) player + 0x18C));
}

Vector3 GetHipPosition(void* player){
	return Transform_get_position(*(void**) ((uint64_t) player + 0x190));
}


void* GetClosestEnemy(void* match, bool byFOV) {
	if(!match) {
		return NULL;
	}
	
	float shortestDistance = 99999;
	float maxAngle = 30.0;
	void* closestEnemy = NULL;
	void* LocalPlayer = GetLocalPlayer(match);
	
	if(LocalPlayer && !get_IsSkyDashing(LocalPlayer) && !get_IsParachuting(LocalPlayer) && !get_IsSkyDiving(LocalPlayer) && !get_IsDieing(LocalPlayer)) {
		for(int u = 0; u <= 50; u++) {
			void* Player = getPlayerByIndex(match, (uint8_t)u);
			if(Player && !IsLocalPlayer(Player) && !IsLocalTeammate(Player) && !get_IsDieing(Player) && !get_IsSkyDashing(Player) && !get_IsParachuting(Player) && 
				!get_IsSkyDiving(Player) && IsVisible(Player) && get_CurHP(Player) > 0)
			{
				Vector3 PlayerPos = GetHipPosition(Player);
				Vector3 LocalPlayerPos = GetHipPosition(LocalPlayer);//Transform_get_position(Component_get_transform(get_main()));
				float distanceToMe = Vector3::Distance(LocalPlayerPos, PlayerPos);
				
				if(byFOV) {
					Vector3 targetDir = PlayerPos - LocalPlayerPos;
					float angle = Vector3::Angle(targetDir, Transform_get_forward(Component_get_transform(get_main()))) * 100.0;
					if(angle <= maxAngle) {
						if(distanceToMe < shortestDistance) {
							shortestDistance = distanceToMe;
							closestEnemy = Player;
						}
					}
				} else {
					if(distanceToMe < shortestDistance) {
						shortestDistance = distanceToMe;
						closestEnemy = Player;
					}
				}
			}
		}
	}
	return closestEnemy;
}


void (*Update)(void* gamestartup); //GameStartup
void _Update(void* gamestartup) {
	Update(gamestartup);
	if(gamestartup) {
		void* Match = CurrentMatch();
		if((aimbot || fireaimbot || scopeaimbot || espshit) && Match) {
			void* LocalPlayer = GetLocalPlayer(Match);
			
			if(LocalPlayer){				
				//ESP
				/*if(espshit && UIInGameScene){
					for(int u = 0; u < 100; u++) {
						void* Player = getPlayerByIndex(Match, (uint8_t)u);
						if(Player && !IsLocalPlayer(Player) && !get_IsDieing(Player) && IsVisible(Player) && get_CurHP(Player) > 0) {
							Vector3 PlayerPos = GetHipPosition(Player);
							Vector3 LocalPos = Transform_get_position(Component_get_transform(get_main()));
							
							char dist[10];
							float n = Vector3::Distance(LocalPos, PlayerPos);
							sprintf(dist, " %dM", (int)n);
							ShowPopupMessage(UIInGameScene, String_Concat(*(void**) ((uint64_t) Player + 0xA8), il2cpp_string_new_0(dist)), 2.0);
							
							int i = 0;
							void* headtf = *(void**) ((uint64_t) Player + 0x154);
							if(headtf){
								Vector3 headpos = WorldToScreenPoint(get_main(), Transform_get_position(headtf));
								
								int screenWidth = Screen_get_width();
								int screenHeight = Screen_get_height();
							
								Vector2 from = Vector2((screenWidth / 2), screenHeight);
								Vector2 to = Vector2(headpos.X, screenHeight - headpos.Y);
								
								
							}
						}
					}
				}*/
				
				//Aimbot
				void* closestEnemy = GetClosestEnemy(Match, fovaim);
				if(closestEnemy) {
					Vector3 PlayerPos = GetHipPosition(closestEnemy);
					Vector3 LocalPos = Transform_get_position(Component_get_transform(get_main()));
					Vector3 up = Vector3::Up();
					Vector3 b = Vector3::Zero();
					
					if(IsCrouching(closestEnemy)) {
						b = Vector3::Down() * 0.4;
					}
					
					Vector3 Forward = PlayerPos - LocalPos + (up * 0.3) + b;
					if(headshoot) {
						Forward = GetHeadPosition(closestEnemy) - LocalPos + b;
					}
					
					if(espshit && UIInGameScene) {					
						char dist[10];
						float n = Vector3::Distance(GetHipPosition(LocalPlayer), PlayerPos);
						sprintf(dist, " %dM", (int)n);
						ShowPopupMessage(UIInGameScene, String_Concat(NULL, get_NickName(closestEnemy), il2cpp_string_new(dist)), 2.0);
					}
					
					Quaternion lookRotation = Quaternion::LookRotation(Forward, up);
					if((scopeaimbot && get_IsSighting(LocalPlayer))) {
						SetAimRotation(LocalPlayer, lookRotation);
					} else if(fireaimbot && IsFiring(LocalPlayer)) {
						SetAimRotation(LocalPlayer, lookRotation);
					} else if(aimbot) {
						SetAimRotation(LocalPlayer, lookRotation);
					}
				}
			}
		}
	}
}

void (*OnInit)(void* gamescene); // COW.UIInGameScene
void _OnInit(void* gamescene) {
	OnInit(gamescene);
	if(gamescene) {
		UIInGameScene = gamescene;
	}
}