int tmp1 = 0;
int tmp2 = 0;
int f = 0;
int m = 0;
void Main() {  }

void Render()
{
    UI::Begin("Play Campaign Map");
    int tmp1 = UI::InputInt("Flag", f);
    int tmp2 = UI::InputInt("Map", m);
    f = tmp1;
    m = tmp2;
    if (UI::Button("Play"))
    {
        PlayMap(f, m);
    }
    UI::End();
}

void PlayMap(int flag, int map) {
    CGameCtnApp@ other = GetApp();
    CTrackMania@ app = cast<CTrackMania>(other);
    CGameManiaTitleControlScriptAPI@ yes = app.ManiaTitleControlScriptAPI;
    yes.PlayCampaign(other.OfficialCampaigns[0], other.OfficialCampaigns[0].MapGroups[flag].MapInfos[map], "TimeAttack", "");
}