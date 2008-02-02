void DrawMenu(int win_x, int win_y){
	//STATUS BACK GROUND
	SetColorRGB(0, 30, 100);
	FillRectEx(2 + win_x, win_y, 116 + win_x, 78 + win_y, 2);
	//STATUS BORDER
	SetImageAlpha(0);
	CopyImage(win_x, win_y, wintop);
	CopyImage(win_x, 9 + win_y, winleft);
	CopyImage(114 + win_x, 9 + win_y, winright);
	CopyImage(win_x, 75 + win_y, windown);
	CopyImage(5 + win_x, 58 + win_y, winmenu);
	//Selected Menu Position
	CopyImage(4 + win_x + selected_menu * 22, 62 + win_y, winselect);
}

void DrawState(int win_x, int win_y){
	string TempString = "";
	//STATUS TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "STATUS");
	//PRINT STATUS VARIABLE
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(11 + win_x, 12 + win_y, Actor.Name);
	//PRINT Job
	switch (Actor.Job){
		case 0:
			DrawStr(11 + win_x, 18 + win_y, " -NOVICE");
			break;
		case 1:
			DrawStr(11 + win_x, 18 + win_y, " -KNIGHT");
			break;
		case 2:
			DrawStr(11 + win_x, 18 + win_y, " -WIZARD");
			break;
	}
	//PRINT Level
	MakeStr1(TempString, "LV %d", Actor.Level + 1000);
	DrawStr(11 + win_x, 28 + win_y, TempString);
	//PRINT STAT
	MakeStr1(TempString, "STR %2d", Actor.Str + 100);
	DrawStr(66 + win_x, 22 + win_y, TempString);
	MakeStr1(TempString, "DEF %2d", Actor.Def + 100);
	DrawStr(66 + win_x, 28 + win_y, TempString);
	MakeStr1(TempString, "INT %2d", Actor.Int + 100);
	DrawStr(66 + win_x, 34 + win_y, TempString);
	MakeStr1(TempString, "DEX %2d", Actor.Dex + 100);
	DrawStr(66 + win_x, 40 + win_y, TempString);
	//PRINT Exp
	MakeStr1(TempString, "EXP %d", Actor.Exp);
	DrawStr(66 + win_x, 46 + win_y, TempString);
	//PRINT Hp
	MakeStr2(TempString, "HP %d/%d", Actor.CurHp, Actor.MaxHp);
	DrawStr(11 + win_x, 40 + win_y, TempString);
	//PRINT Mp
	MakeStr2(TempString, "MP %d/%d", Actor.CurMp, Actor.MaxMp);
	DrawStr(11 + win_x, 46 + win_y, TempString);
}

void DrawItem(int win_x, int win_y){
	string TempString = "";
	int i;
	//ITEM TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "ITEM");
	//PRINT SELECTED ITEM
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 12 + win_y, ItemList[ItemSlot[selected_submenu].ListNumber].Name);
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "x%2d", ItemSlot[selected_submenu].Quantity);
	DrawStr(94 + win_x, 16 + win_y, TempString);
	//ITEM ICON LIST
	SetColorRGB(0, 30, 100);
	for(i = 0; i < 16; i++){
		FillRectEx(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, 19 + (i%8)*13 + win_x, 40 + i/8*13 + win_y, 1);
		CopyImage(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, icon[ItemList[ItemSlot[i]].Icon]);
		if(i == selected_submenu){
			SetColorRGB(255, 255, 0);
			DrawRect(8 + (i%8)*13 + win_x, 29 + i/8*13 + win_y, 20 + (i%8)*13 + win_x, 41 + i/8*13 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
}

void DrawSkill(int win_x, int win_y){
	string TempString = "";
	int i;
	//SKILL TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "SKILL");
	//PRINT SELECTED SKILL
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 12 + win_y, SkillList[SkillSlot[selected_submenu].ListNumber].Name);
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "Lv%d", SkillSlot[selected_submenu].Quantity);
	DrawStr(94 + win_x, 16 + win_y, TempString);
	//SKILL ICON LIST
	SetColorRGB(0, 30, 100);
	for(i = 0; i < 16; i++){
		FillRectEx(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, 19 + (i%8)*13 + win_x, 40 + i/8*13 + win_y, 1);
		CopyImage(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, icon[SkillList[SkillSlot[i]].Icon]);
		if(i == selected_submenu){
			SetColorRGB(255, 255, 0);
			DrawRect(8 + (i%8)*13 + win_x, 29 + i/8*13 + win_y, 20 + (i%8)*13 + win_x, 41 + i/8*13 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
}

void DrawEquip(int win_x, int win_y){
	string TempString = "";
	int i;
	//EQUIP TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "EQUIP");
	//PRINT SELECTED EQUIPED ITEM
	if(selected_menuinsub == -1){
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(9 + win_x, 12 + win_y, EquipList[Actor.equip[selected_submenu]].Name);
		SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		MakeStr1(TempString, "+%2d", Actor.upgrade[selected_submenu]);
		DrawStr(94 + win_x, 16 + win_y, TempString);
	}else{
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(9 + win_x, 12 + win_y, EquipList[EquipSlot[selected_menuinsub].ListNumber].Name);
		SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		MakeStr1(TempString, "+%2d", EquipSlot[selected_menuinsub].Quantity);
		DrawStr(94 + win_x, 16 + win_y, TempString);
	}
	//EQUIPED
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 30 + win_y, "EQUIP>");
	switch (selected_submenu){
		case 0:DrawStr(10 + win_x, 36 + win_y, "HEAD");		break;
		case 1:DrawStr(10 + win_x, 36 + win_y, "WEAPON");	break;
		case 2:DrawStr(10 + win_x, 36 + win_y, "ARMOR");	break;
		case 3:DrawStr(10 + win_x, 36 + win_y, "SHEILD");	break;
		case 4:DrawStr(10 + win_x, 36 + win_y, "SHOES");	break;
		case 5:DrawStr(10 + win_x, 36 + win_y, "ETC");
	}
	for(i = 0; i < 6; i++){
		FillRectEx(35 + (i%6)*13 + win_x, 30 + win_y, 45 + (i%6)*13 + win_x, 40 + win_y, 1);
		CopyImage(35 + (i%6)*13 + win_x, 30 + win_y, icon[EquipList[Actor.equip[i]].Icon]);
		if(i == selected_submenu){
			if(selected_menuinsub == -1)SetColorRGB(255, 255, 0);
			else SetColorRGB(255, 0, 0);
			DrawRect(34 + (i%6)*13 + win_x, 29 + win_y, 46 + (i%6)*13 + win_x, 41 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
	//EQUIP ICON LIST
	if(selected_menuinsub > -1){
		SetColorRGB(0, 30, 100);
		for(i = 0; i < 8; i++){
			FillRectEx(9 + (i%8)*13 + win_x, 43 + win_y, 19 + (i%8)*13 + win_x, 53 + win_y, 1);
			CopyImage(9 + (i%8)*13 + win_x, 43 + win_y, icon[EquipList[EquipSlot[i].ListNumber].Icon]);
			if(i == selected_menuinsub){
				SetColorRGB(255, 255, 0);
				DrawRect(8 + (i%8)*13 + win_x, 42 + win_y, 20 + (i%8)*13 + win_x, 54 + win_y);
				SetColorRGB(0, 30, 100);
			}
		}
	}
}

void DrawQuest(int win_x, int win_y){
	string TempString = "";
	//QUEST TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "QUEST");
}