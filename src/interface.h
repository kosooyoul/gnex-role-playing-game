struct Slot QuickSlot[QuickSlotSize];	//퀵슬롯 크기(아이템번호, 카테고리 사용)
int selected_menu = 0 ;			//선택한 메뉴
int selected_submenu = 0 ;		//선택한 부메뉴
int selected_menuinsub = -1;	//선택한 최하위 메뉴
int QuickSlot_VIEW = 0;

//퀵슬롯 설정 :: 테스트
void SetQuickSlot(){
	int i;
	for(i = 0; i < QuickSlotSize; i++) QuickSlot[i].ListNumber = i;
}

//인터페이스 그리기
void DrawInterface(){
	int i;
	string Temp;

	//인터페이스_상위 게이지 바탕 이미지 출력
	CopyImage(17, 14, interface_top1);
	CopyImage(17, 23, interface_top1);

	//게이지 출력
	SetColorRGB(200, 130, 50);
	CopyImage(Player.HP * 50 / Player.MAXHP - 33, 14, interface_top2);
	SetColorRGB(50, 130, 200);
	CopyImage(Player.MP * 50 / Player.MAXMP - 33, 23, interface_top3);
	SetColorRGB(130, 70, 160);
	CopyImage(Player.EXP * 30 / Player.MAXEXP + 23, 5, interface_top4);

	//인터페이스_상위 이미지 출력
	CopyImage(0, 0, interface_top);

	//레벨 표시
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_CENTER);
	MakeStr1(Temp, "%d", Player.LV);
	DrawStr(25, 2, Temp);

	//체력 표시
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(Temp, "%d", Player.HP);
	DrawStr(70, 13, Temp);

	//마나 표시
	MakeStr1(Temp, "%d", Player.MP);
	DrawStr(70, 22, Temp);


	//경험치 표시
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(Temp, "%d%%", Player.EXP * 100 / Player.MAXEXP);
	DrawStr(67, 3, Temp);
	DrawStr(66, 2, Temp);
	DrawStr(68, 2, Temp);
	DrawStr(67, 1, Temp);
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(67, 2, Temp);

	//선택된 퀵슬롯 심볼 출력
	CopyImage(225, 4, symbol_qs[QuickSlot_VIEW]);

	//하단 인터페이스 표시
	SetColorRGB(0, 0, 0);
	CopyImage(0, 247, interface_bottom);
	//FillRect(0, 248, 239, 319);
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_CENTER);
	DrawStr(124, 278, Area[Player.map].name);
	MakeStr1(Temp, "%d", Player.x);
	DrawStr(178, 278, Temp);
	MakeStr1(Temp, "%d", Player.y);
	DrawStr(201, 278, Temp);

	//퀵슬롯 표시 : 임시 - 인벤토리출력
	for(i = QuickSlot_VIEW * 6; i < QuickSlot_VIEW * 6 + QuickSlotWidth; i++){
		CopyImage((i % QuickSlotWidth) * 21 + 96, 16, icon[ItemList[Inventory[QuickSlot[i].ListNumber].ListNumber].Icon]);
		if(Inventory[QuickSlot[i].ListNumber].ListNumber){	//아이템이 있으면 수량 표시
			MakeStr1(Temp, "%d", Inventory[QuickSlot[i].ListNumber].Quantity);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
			DrawStr((i % QuickSlotWidth) * 21 + 109, 24, Temp);
			DrawStr((i % QuickSlotWidth) * 21 + 110, 23, Temp);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
			DrawStr((i % QuickSlotWidth) * 21 + 110, 24, Temp);
		}
	}

	//돈 표시
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);
	MakeStr1(Temp, "%d\%", Player.Gold);
	DrawStr(56, 278, Temp);
}

//메뉴 > 베이스 출력
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

//메뉴 > 상태 출력
void DrawState(int win_x, int win_y){
	string TempString = "";
	//STATUS TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "STATUS");
	//PRINT STATUS VARIABLE
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(11 + win_x, 12 + win_y, Player.Name);
	//PRINT Job
	switch (Player.Job){
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
	MakeStr1(TempString, "LV %d", Player.LV);
	DrawStr(11 + win_x, 28 + win_y, TempString);
	//PRINT STAT
	MakeStr1(TempString, "STR %2d", Player.STR);
	DrawStr(66 + win_x, 22 + win_y, TempString);
	MakeStr1(TempString, "DEF %2d", Player.DEF);
	DrawStr(66 + win_x, 28 + win_y, TempString);
	MakeStr1(TempString, "INT %2d", Player.WIS);
	DrawStr(66 + win_x, 34 + win_y, TempString);
	MakeStr1(TempString, "DEX %2d", Player.DEX);
	DrawStr(66 + win_x, 40 + win_y, TempString);
	//PRINT Exp
	MakeStr1(TempString, "EXP %d", Player.EXP);
	DrawStr(66 + win_x, 46 + win_y, TempString);
	//PRINT Hp
	MakeStr2(TempString, "HP %d/%d", Player.HP, Player.MAXHP);
	DrawStr(11 + win_x, 40 + win_y, TempString);
	//PRINT Mp
	MakeStr2(TempString, "MP %d/%d", Player.MP, Player.MAXMP);
	DrawStr(11 + win_x, 46 + win_y, TempString);
}

//메뉴 > 인벤토리 출력
void DrawItem(int win_x, int win_y){
	string TempString = "";
	int i;
	//ITEM TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "ITEM");
	//PRINT SELECTED ITEM
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 12 + win_y, ItemList[Inventory[selected_submenu].ListNumber].Name);
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "x%2d", Inventory[selected_submenu].Quantity);
	DrawStr(94 + win_x, 16 + win_y, TempString);
	//ITEM ICON LIST
	SetColorRGB(0, 30, 100);
	for(i = 0; i < 16; i++){
		FillRectEx(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, 19 + (i%8)*13 + win_x, 40 + i/8*13 + win_y, 1);
		CopyImage(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, icon[ItemList[Inventory[i].ListNumber].Icon]);
		if(i == selected_submenu){
			SetColorRGB(255, 255, 0);
			DrawRect(8 + (i%8)*13 + win_x, 29 + i/8*13 + win_y, 20 + (i%8)*13 + win_x, 41 + i/8*13 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
}

//메뉴 > 스킬 출력
void DrawSkill(int win_x, int win_y){
	string TempString = "";
	int i;
	//SKILL TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "SKILL");
	//PRINT SELECTED SKILL
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 12 + win_y, ItemList[Inventory[selected_submenu].ListNumber].Name);
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "Lv%d", Inventory[selected_submenu].Quantity);
	DrawStr(94 + win_x, 16 + win_y, TempString);
	//SKILL ICON LIST
	SetColorRGB(0, 30, 100);
	for(i = 0; i < 16; i++){
		FillRectEx(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, 19 + (i%8)*13 + win_x, 40 + i/8*13 + win_y, 1);
		CopyImage(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, icon[ItemList[Inventory[i].ListNumber].Icon]);
		if(i == selected_submenu){
			SetColorRGB(255, 255, 0);
			DrawRect(8 + (i%8)*13 + win_x, 29 + i/8*13 + win_y, 20 + (i%8)*13 + win_x, 41 + i/8*13 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
}

//메뉴 > 장비 출력
void DrawEquip(int win_x, int win_y){
	string TempString = "";
	int i;
	//Equip TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "Equip");
	//PRINT SELECTED EquipED ITEM
	if(selected_menuinsub == -1){
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(9 + win_x, 12 + win_y, ItemList[Player.Equip[selected_submenu]].Name);
	}else{
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(9 + win_x, 12 + win_y, ItemList[Inventory[selected_menuinsub].ListNumber].Name);
		SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		MakeStr1(TempString, "+%2d", Inventory[selected_menuinsub].Quantity);
		DrawStr(94 + win_x, 16 + win_y, TempString);
	}
	//EquipED
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 30 + win_y, "Equip>");
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
		CopyImage(35 + (i%6)*13 + win_x, 30 + win_y, icon[ItemList[Player.Equip[i]].Icon]);
		if(i == selected_submenu){
			if(selected_menuinsub == -1)SetColorRGB(255, 255, 0);
			else SetColorRGB(255, 0, 0);
			DrawRect(34 + (i%6)*13 + win_x, 29 + win_y, 46 + (i%6)*13 + win_x, 41 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
	//Equip ICON LIST
	if(selected_menuinsub > -1){
		SetColorRGB(0, 30, 100);
		for(i = 0; i < 8; i++){
			FillRectEx(9 + (i%8)*13 + win_x, 43 + win_y, 19 + (i%8)*13 + win_x, 53 + win_y, 1);
			CopyImage(9 + (i%8)*13 + win_x, 43 + win_y, icon[ItemList[Inventory[i].ListNumber].Icon]);
			if(i == selected_menuinsub){
				SetColorRGB(255, 255, 0);
				DrawRect(8 + (i%8)*13 + win_x, 42 + win_y, 20 + (i%8)*13 + win_x, 54 + win_y);
				SetColorRGB(0, 30, 100);
			}
		}
	}
}

//메뉴 > 퀘스트 출력
void DrawQuest(int win_x, int win_y){
	string TempString = "";
	//QUEST TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "QUEST");
}

//메뉴 출력
void ShowMenu(int Key){
	int Temp;						//Swap Data
	switch (Key){
		case SWAP_KEY_UP:			//<-Menu-
			selected_menu = (5 + selected_menu - 1) % 5;
			selected_submenu = 0;
			selected_menuinsub = -1;
			break;
		case SWAP_KEY_DOWN:		//-Menu->
			selected_menu = (5 + selected_menu + 1) % 5;
			selected_submenu = 0;
			selected_menuinsub = -1;
			break;
		case SWAP_KEY_LEFT:			//<-SUB Menu-
			if(selected_menu == 1){selected_submenu = (16 + selected_submenu - 1) % 16;}
			else if(selected_menu == 2){selected_submenu = (16 + selected_submenu - 1) % 16;}
			else if(selected_menu == 3){
				if(selected_menuinsub == -1)selected_submenu = (6 + selected_submenu - 1) % 6;
				else selected_menuinsub = (8 + selected_menuinsub - 1) % 8;
			}
			break;
		case SWAP_KEY_RIGHT:			//-SUB Menu->
			if(selected_menu == 1){selected_submenu = (16 + selected_submenu + 1) % 16;}
			else if(selected_menu == 2){selected_submenu = (16 + selected_submenu + 1) % 16;}
			else if(selected_menu == 3){
				if(selected_menuinsub == -1)selected_submenu = (6 + selected_submenu + 1) % 6;
				else selected_menuinsub = (8 + selected_menuinsub + 1) % 8;
			}
			break;
		case SWAP_KEY_CLR:			//Close
			selected_menu = 0;
			selected_submenu = 0;
			selected_menuinsub = -1;
			GameMode = 1;
			break;
		case SWAP_KEY_OK:
			if(selected_menu == 3){
				if(selected_menuinsub == -1)selected_menuinsub = 0;
				else if(selected_menuinsub == 0)selected_menuinsub = -1;
				else{
					//무기 교체
					Temp = Player.Equip[selected_submenu];
					Player.Equip[selected_submenu] = Inventory[selected_menuinsub].ListNumber;
					Inventory[selected_menuinsub].ListNumber = Temp;
					Temp = Player.Upgrade[selected_submenu];
					Player.Upgrade[selected_submenu] = Inventory[selected_menuinsub].Quantity;
					Inventory[selected_menuinsub].Quantity = Temp;
					selected_menuinsub = -1;
				}
			}
	}
}
