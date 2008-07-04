struct Slot QuickSlot[QuickSlotSize];	//퀵슬롯 크기(아이템번호, 카테고리 사용)
int selected_menu = 0 ;			//선택한 메뉴
int selected_submenu = 0 ;		//선택한 부메뉴
int selected_menuinsub = -1;	//선택한 최하위 메뉴

//퀵슬롯 설정 :: 테스트
void SetQuickSlot(){
	int i;
	for(i = 0; i < QuickSlotSize; i++) QuickSlot[i].ListNumber = i;
}

//인터페이스 그리기
void DrawInterface(){
	int i;
	string Temp;


//int LV, EXP; 	int MAXHP, HP;	int MAXMP, MP;	int STR, DEF, WIS, DEX;	int Gold;
	SetColorRGB(0, 0, 0);
	FillRect(0, 0, 239, 31);
	FillRect(0, 248, 239, 319);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);	//테스트 코드 현재 아이피 출력
	MakeStrStr(Temp, "IP = %s (*:인천,#:제천)", SVR_IP);		//테스트 코드 현재 아이피 출력
	DrawStr(8, 8, Temp);										//테스트 코드 현재 아이피 출력
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//테스트 코드 제작자
	DrawStr(236, 310, "010-2839-4096 Ahyane");					//테스트 코드 제작자
	/* _ */
	CopyImage(0+InterPX,166+InterPY, systembase);				//테스트 코드 인터페이스 틀
	
	//레벨 표시
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(Temp, "%d", Player.LV);
	DrawStr(15+InterPX, 168+InterPY, Temp);

	//체력 표시
	MakeStr2(Temp, "%d/%d", Player.HP, Player.MAXHP);
	DrawStr(69+InterPX, 177+InterPY, Temp);

	//마나 표시
	MakeStr2(Temp, "%d/%d", Player.MP, Player.MAXMP);
	DrawStr(69+InterPX, 183+InterPY, Temp);

	//경험치 표시
	MakeStr1(Temp, "%d%", Player.EXP);
	DrawStr(69+InterPX, 189+InterPY, Temp);

	//돈 표시
	MakeStr1(Temp, "%d\%", Player.Gold);
	DrawStr(130+InterPX, 168+InterPY, Temp);

	//퀵슬롯 표시 : 임시 - 인벤토리출력
	
	for(i = 0; i < QuickSlotSize; i++){
		CopyImage(111 + (i % QuickSlotWidth) * 13+InterPX, 178 + (i / QuickSlotWidth) * 13+InterPY, icon[ItemList[Inventory[QuickSlot[i].ListNumber].ListNumber].Icon]);

		SetColorRGB(0, 0, 0);
		FillRect(109 + (i % QuickSlotWidth) * 13+InterPX, 176 + (i / QuickSlotWidth) * 13+InterPY, 113 + (i % QuickSlotWidth) * 13+InterPX, 182 + (i / QuickSlotWidth) * 13+InterPY);

		MakeStr1(Temp, "%d", (i + 1) % 10);
		SetFontType(S_FONT_SMALL, S_CYAN, S_BLACK, S_ALIGN_RIGHT);//퀵슬롯 버튼 표시
		DrawStr(114 + (i % QuickSlotWidth) * 13+InterPX, 177 + (i / QuickSlotWidth) * 13+InterPY, Temp);

		if(Inventory[QuickSlot[i].ListNumber].ListNumber){	//아이템이 있으면 수량 표시
			MakeStr1(Temp, "%d", Inventory[QuickSlot[i].ListNumber].Quantity);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
			DrawStr(121 + (i % QuickSlotWidth) * 13+InterPX, 183 + (i / QuickSlotWidth) * 13+InterPY, Temp);
			DrawStr(122 + (i % QuickSlotWidth) * 13+InterPX, 182 + (i / QuickSlotWidth) * 13+InterPY, Temp);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
			DrawStr(122 + (i % QuickSlotWidth) * 13+InterPX, 183 + (i / QuickSlotWidth) * 13+InterPY, Temp);
		}
	}//*/
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
