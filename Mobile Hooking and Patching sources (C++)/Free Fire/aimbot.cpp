auto Match_GetPlayers = (monoDictionary<void **, void **> *(*)(void *)) getAbsoluteAddress(
        il2cppName, 0); //dummy

monoDictionary<void **, void **> *players;

    Match_GetPlayers = (monoDictionary<void **, void **> *(*)(void *)) getAbsoluteAddress(
            il2cppName, 0x12B15F8);

Vector3 GetHeadPosition(void *player) {
    return Transform_get_position(*(void **) ((uint64_t) player + 0x18C));
}

Vector3 GetHipPosition(void *player) {
    return Transform_get_position(*(void **) ((uint64_t) player + 0x190));
}

void *GetClosestEnemy(void *match, bool byFOV) {
    if (!match) {
        return NULL;
    }

    float shortestDistance = 99999;
    float maxAngle = 30.0;
    void *closestEnemy = NULL;
    void *LocalPlayer = GetLocalPlayer(match);

    if (LocalPlayer && !get_IsSkyDashing(LocalPlayer) && !get_IsParachuting(LocalPlayer) &&
        !get_IsSkyDiving(LocalPlayer) && !get_IsDieing(LocalPlayer)) {
        for (int u = 0; u <= 50; u++) {
            void *Player = getPlayerByIndex(match, (uint8_t) u);
            if (Player && !IsLocalPlayer(Player) && !IsLocalTeammate(Player) &&
                !get_IsDieing(Player) && !get_IsSkyDashing(Player) && !get_IsParachuting(Player) &&
                !get_IsSkyDiving(Player) && IsVisible(Player) && get_CurHP(Player) > 0) {
                Vector3 PlayerPos = GetHipPosition(Player);
                Vector3 LocalPlayerPos = GetHipPosition(
                        LocalPlayer);//Transform_get_position(Component_get_transform(get_main()));
                float distanceToMe = Vector3::Distance(LocalPlayerPos, PlayerPos);

                if (byFOV) {
                    Vector3 targetDir = PlayerPos - LocalPlayerPos;
                    float angle = Vector3::Angle(targetDir, Transform_get_forward(
                            Component_get_transform(get_main()))) * 100.0;
                    if (angle <= maxAngle) {
                        if (distanceToMe < shortestDistance) {
                            shortestDistance = distanceToMe;
                            closestEnemy = Player;
                        }
                    }
                } else {
                    if (distanceToMe < shortestDistance) {
                        shortestDistance = distanceToMe;
                        closestEnemy = Player;
                    }
                }
            }
        }
    }
    return closestEnemy;
}

void (*Update)(void *gamestartup); //GameStartup
void _Update(void *gamestartup) {

    if (gamestartup != NULL) {
        void *Match = CurrentMatch();
        if (Match) {
            // ---------- ESP ---------
            if (esp || name || box) {
                players = Match_GetPlayers(Match);
            }
            // ---------- Aimbot ---------
            if (aimbot || fireaimbot || scopeaimbot || enemyname) {

                void *LocalPlayer = GetLocalPlayer(Match);

                if (LocalPlayer) {
                    //Aimbot
                    void *closestEnemy = GetClosestEnemy(Match, fovaim);
                    if (closestEnemy) {
                        Vector3 PlayerPos = GetHipPosition(closestEnemy);
                        Vector3 LocalPos = Transform_get_position(
                                Component_get_transform(get_main()));
                        Vector3 up = Vector3::Up();
                        Vector3 b = Vector3::Zero();

                        if (IsCrouching(closestEnemy)) {
                            b = Vector3::Down() * 0.4;
                        }

                        Vector3 Forward = PlayerPos - LocalPos + (up * 0.3) + b;
                        if (headshot) {
                            Forward = GetHeadPosition(closestEnemy) - LocalPos + b;
                        }

                        // ---------- Show name ---------
                        if (enemyname && UIInGameScene) {
                            char dist[10];
                            float n = Vector3::Distance(GetHipPosition(LocalPlayer), PlayerPos);
                            sprintf(dist, " %dM", (int) n);
                            ShowPopupMessage(UIInGameScene,
                                             String_Concat(NULL, get_NickName(closestEnemy),
                                                           il2cpp_string_new(dist)), 2.0);
                        }

                        // ---------- Aimbot ---------
                        Quaternion lookRotation = Quaternion::LookRotation(Forward, up);
                        if ((scopeaimbot && get_IsSighting(LocalPlayer))) {
                            SetAimRotation(LocalPlayer, lookRotation);
                        } else if (fireaimbot && IsFiring(LocalPlayer)) {
                            SetAimRotation(LocalPlayer, lookRotation);
                        } else if (aimbot) {
                            SetAimRotation(LocalPlayer, lookRotation);
                        }
                    }
                }
            }
        }
    }
    return Update(gamestartup);
}