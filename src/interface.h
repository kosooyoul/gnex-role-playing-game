struct Slot QuickSlot[QuickSlotSize];	//퀵슬롯 크기(아이템번호, 카테고리 사용)
int focus_selector = 0;			//조작중인 메뉴의 위치(0:상위1,1:상위2,..)
int selected_menu = 0;			//선택한 상위 메뉴
int selected_submenu = 0;		//선택한 하위1 메뉴
int selected_subsubmenu = 0;	//선택한 하위2 메뉴
int QuickSlot_VIEW = 0;			//보고자 하는 퀵슬롯 (A,B,C)
int INTER_MSG_LIST_VIEW = 9;	//메시지 보일 시작부분 0 ~ 9
int INTER_MSG_LIST_LAST = 0;	//가장 마지막으로 날라온 메시지 카운터
string INTER_MSG_LIST[12] = {"","","","","","","","","http://www.ahyane.net","퀵슬롯 전환은 '8'과 '0'버튼 이용","메뉴이용은 'CLR'버튼 이용","이전 메시지 보기는 '#'버튼 이용"};

//퀵슬롯 설정 :: 테스트
void SetQuickSlot(){
	int i;
	for(i = 0; i < QuickSlotSize; i++) QuickSlot[i].ListNumber = i;
}

//인터페이스 하단 메시지 리스트 추가
void INTER_ADD_MSG_LIST(int MSGNUM){
	INTER_MSG_LIST[INTER_MSG_LIST_LAST] = Message[MSGNUM];		//메시지 갱신
	INTER_MSG_LIST_LAST = (INTER_MSG_LIST_LAST + 1) % 12;		//마지막 위치 변경
	INTER_MSG_LIST_VIEW = 9;									//최근 메시지 보이게함
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
	CopyImage(Player.SP * 50 / Player.MAXSP - 33, 23, interface_top3);
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
	MakeStr1(Temp, "%d", Player.SP);
	DrawStr(70, 22, Temp);

	//경험치 표시
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);
	MakeStr1(Temp, "%d", Player.EXP * 100 / Player.MAXEXP);
	DrawStr(72, 3, Temp);
	DrawStr(71, 2, Temp);
	DrawStr(73, 2, Temp);
	DrawStr(72, 1, Temp);
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
	DrawStr(72, 2, Temp);

	//선택된 퀵슬롯 심볼 출력
	CopyImage(225, 4, symbol_qs[QuickSlot_VIEW]);

	//하단 인터페이스 표시
	CopyImage(0, 245, interface_bottom);
	CopyImage(228, 253 + INTER_MSG_LIST_VIEW, interface_scroll);	//메시지 스크롤

	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_CENTER);
	DrawStr(126, 289, Area[Player.map].name);
	MakeStr1(Temp, "%d", Player.x);
	DrawStr(179, 289, Temp);
	MakeStr1(Temp, "%d", Player.y);
	DrawStr(201, 289, Temp);

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);		//메시지 표시
	for(i = 0; i < 3; i++)DrawStr(4, 248 + i * 12, INTER_MSG_LIST[(i + INTER_MSG_LIST_VIEW + INTER_MSG_LIST_LAST)%12]);

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
	DrawStr(56, 289, Temp);
}

//메뉴 > 베이스 출력
void DrawMenu(int win_x, int win_y){
	int i;

	CopyImage(52, 63, interface_window);
				
	if(selected_menu < 4){
		CopyImage(52, 63, interface_menu[selected_menu]);							//내용
	}
			
	for(i = 0; i < 5; i++){
		CopyImage(16, 71 + i * 28, interface_button[i]);							//상위1메뉴 출력
		if(i == selected_menu){
			if(focus_selector == 0)
				CopyImage(18, 73 + selected_menu * 28, interface_selmenu);			//상위1메뉴 커서
			else
				CopyImage(16, 71 + selected_menu * 28, interface_entered[selected_menu]);
		}
	}
}

//메뉴 > 상태 출력
void DrawState(int win_x, int win_y){
	string TempString = "";
	//PRINT STATUS VARIABLE
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(114, 70, Player.Name);
	//PRINT Job
	DrawStr(114, 87, PlayerJob[Player.Job]);
	//PRINT 상태
	DrawStr(114, 104, "정상");
	//PRINT 생각
	DrawStr(60, 121, "양순이 생각 없음..");

	//PRINT Level
	MakeStr1(TempString, "LV %d", Player.LV);
	DrawStr(60, 139, TempString);
	//PRINT EXP
	MakeStr2(TempString, "EXP %d / %d", Player.EXP, Player.MAXEXP);
	DrawStr(115, 139, TempString);
	//PRINT STAT
	MakeStr1(TempString, "STR %2d", Player.STR);
	DrawStr(60, 173, TempString);
	MakeStr1(TempString, "DEF %2d", Player.DEF);
	DrawStr(60, 190, TempString);
	MakeStr1(TempString, "INT %2d", Player.INT);
	DrawStr(115, 173, TempString);
	MakeStr1(TempString, "DEX %2d", Player.DEX);
	DrawStr(115, 190, TempString);
	MakeStr1(TempString, "+ %2d", Player.STAT);
	DrawStr(183, 190, TempString);

	//PRINT Hp
	MakeStr2(TempString, "HP %d/%d", Player.HP, Player.MAXHP);
	DrawStr(60, 156, TempString);
	//PRINT Mp
	MakeStr2(TempString, "SP %d/%d", Player.SP, Player.MAXSP);
	DrawStr(139, 156, TempString);
}

//메뉴 > 인벤토리 출력
void DrawItem(int win_x, int win_y){
	string TempString = "";
	int i;
	//PRINT SELECTED ITEM
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(61, 70, ItemList[Inventory[selected_submenu].ListNumber].Name);
	MakeStr1(TempString, "x %2d", Inventory[selected_submenu].Quantity);
	DrawStr(185, 70, TempString);
	DrawStr(61, 87, ItemType[ItemList[Inventory[selected_submenu].ListNumber].Type]);
	DrawStr(61, 104, ItemList[Inventory[selected_submenu].ListNumber].Tip);

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
	MakeStr1(TempString, "%d AL", ItemList[Inventory[selected_submenu].ListNumber].Cost / 2);
	DrawStr(209, 87, TempString);
	//ITEM ICON LIST
	for(i = 0; i < 24; i++){
		CopyImage(66 + (i%6) * 23, 127 + i/6 * 23, icon[ItemList[Inventory[i].ListNumber].Icon]);
		//아이템이 있으면 수량 표시
		if(Inventory[i].ListNumber){
			MakeStr1(TempString, "%d", Inventory[i].Quantity);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
			DrawStr((i%6) * 23 + 79,i/6 * 23 + 135, TempString);
			DrawStr((i%6) * 23 + 80,i/6 * 23 + 134, TempString);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
			DrawStr((i%6) * 23 + 80,i/6 * 23 + 135, TempString);
		}
	}
	if(focus_selector)CopyImage(60 + (selected_submenu%6) * 23, 121 + selected_submenu/6 * 23, interface_selitem);

	CopyImage(200, 127 + selected_submenu * 66 / 24, interface_scroll);
}

//메뉴 > 스킬 출력
void DrawSkill(int win_x, int win_y){
	string TempString = "";
	int i;
	//PRINT SELECTED SKILL
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(61, 70, SkillList[SkillSlot[selected_submenu].ListNumber].Name);
	MakeStr1(TempString, "Lv %2d", SkillSlot[selected_submenu].Quantity);
	DrawStr(180, 70, TempString);
	DrawStr(61, 87, SkillType[SkillList[SkillSlot[selected_submenu].ListNumber].Type]);
	DrawStr(61, 104, SkillList[SkillSlot[selected_submenu].ListNumber].Tip);

	//남은 스킬포인트
	MakeStr1(TempString, "+ %2d", Player.SKILL);
	DrawStr(183, 195, TempString);

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
	MakeStr1(TempString, "%d SP", SkillList[SkillSlot[selected_submenu].ListNumber].SP);
	DrawStr(209, 87, TempString);
	//SKILL ICON LIST
	for(i = 0; i < 18; i++){
		CopyImage(66 + (i%6) * 23, 127 + i/6 * 23, icon[SkillList[SkillSlot[i].ListNumber].Icon]);
		//스킬이 있으면 레벨 표시
		if(SkillSlot[i].ListNumber){
			MakeStr1(TempString, "%d", SkillSlot[i].Quantity);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//레벨그림자
			DrawStr((i%6) * 23 + 79,i/6 * 23 + 135, TempString);
			DrawStr((i%6) * 23 + 80,i/6 * 23 + 134, TempString);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//레벨표시
			DrawStr((i%6) * 23 + 80,i/6 * 23 + 135, TempString);
		}
	}
	if(focus_selector)CopyImage(60 + (selected_submenu%6) * 23, 121 + selected_submenu/6 * 23, interface_selitem);

	CopyImage(200, 127 + selected_submenu * 43 / 18, interface_scroll);
}

//메뉴 > 장비 출력
void DrawEquip(int win_x, int win_y){
	string TempString = "";
	int i;

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(60, 70, EquipPart[selected_submenu]);						//부위 출력
	DrawStr(103, 70, EquipList[Player.Equip[selected_submenu]].Name);	//장비 이름출력
	MakeStr1(TempString, "+ %d", Player.Upgrade[selected_submenu]);
	DrawStr(191, 70, TempString);										//장비 인챈트 출력
	DrawStr(60, 87, EquipList[Player.Equip[selected_submenu]].Tip);		//장비 설명 출력

	//EQUIP ICON LIST
	for(i = 0; i < 6; i++){
		CopyImage(66 + (i%6) * 23, 110, icon[EquipList[Player.Equip[i]].Icon]);
		//장비가 있으면 인챈트 표시
		if(Player.Equip[i]){
			MakeStr1(TempString, "%d", Player.Upgrade[i]);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//레벨그림자
			DrawStr((i%6) * 23 + 79, 118, TempString);
			DrawStr((i%6) * 23 + 80, 117, TempString);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//레벨표시
			DrawStr((i%6) * 23 + 80, 118, TempString);
		}
	}
	if(focus_selector)CopyImage(60 + (selected_submenu) * 23, 104, interface_selitem);

	//선택 부위의 장비 선택
	if(focus_selector == 2){
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(103, 133, EquipList[Equipment[selected_subsubmenu].ListNumber].Name);			//장비 이름출력
		MakeStr1(TempString, "+ %d", Equipment[selected_subsubmenu].Quantity);
		DrawStr(191, 133, TempString);										//장비 인챈트 출력
		DrawStr(60, 150, EquipList[Equipment[selected_subsubmenu].ListNumber].Tip);			//장비 설명 출력

		//선택목록 ICON LIST
		for(i = 0; i < 12; i++){
			CopyImage(66 + (i%6) * 23, 173 + i/6 * 23, icon[EquipList[Equipment[i].ListNumber].Icon]);
			//장비가 있으면 인챈트 표시
			if(Equipment[i].ListNumber){
				MakeStr1(TempString, "%d", Equipment[i].Quantity);
				SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//레벨그림자
				DrawStr((i%6) * 23 + 79, i/6 * 23 + 181, TempString);
				DrawStr((i%6) * 23 + 80, i/6 * 23 + 180, TempString);
				SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//레벨표시
				DrawStr((i%6) * 23 + 80, i/6 * 23 + 181, TempString);
			}
		}
		CopyImage(60 + (selected_subsubmenu%6) * 23, selected_subsubmenu/6 * 23 + 167, interface_selitem);
	}
	CopyImage(200, 173 + selected_subsubmenu * 19 / 12, interface_scroll);
}

//메뉴 출력을 위한 키처리
void ShowMenu(int Key){
	int Temp;						//Swap Data
	
	switch (Key){
		case SWAP_KEY_1:
		case SWAP_KEY_2:
		case SWAP_KEY_3:
		case SWAP_KEY_4:
			if(focus_selector == 0){
				selected_menu = Key - 1;
				focus_selector = 1;
			}
			break;

		case SWAP_KEY_UP:
			switch(focus_selector){
				case 0:
					selected_menu = (5 + selected_menu - 1) % 5;
					break;
				case 1:
					switch(selected_menu){
						case 0: break;
						case 1: break;
						case 2: selected_submenu = (24 + selected_submenu - 6) % 24;break;
						case 3: selected_submenu = (18 + selected_submenu - 6) % 18;break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1: selected_subsubmenu = (12 + selected_subsubmenu - 6) % 12;break;
					}
					break;
			}
			break;

		case SWAP_KEY_DOWN:
			switch(focus_selector){
				case 0:
					selected_menu = (selected_menu + 1) % 5;
					break;
				case 1:
					switch(selected_menu){
						case 0: break;
						case 1: focus_selector = 2;break;
						case 2: selected_submenu = (selected_submenu + 6) % 24;break;
						case 3: selected_submenu = (selected_submenu + 6) % 18;break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1: selected_subsubmenu = (selected_subsubmenu + 6) % 12;break;
					}
					break;
			}
			break;

		case SWAP_KEY_LEFT:
			switch(focus_selector){
				case 1:
					switch(selected_menu){
						case 0: break;
						case 1: selected_submenu = (6 + selected_submenu - 1) % 6;break;
						case 2: selected_submenu = (24 + selected_submenu - 1) % 24;break;
						case 3: selected_submenu = (18 + selected_submenu - 1) % 18;break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1: selected_subsubmenu = (12 + selected_subsubmenu - 1) % 12;break;
					}
					break;
			}
			break;

		case SWAP_KEY_RIGHT:
			switch(focus_selector){
				case 1:
					switch(selected_menu){
						case 0: break;
						case 1: selected_submenu = (selected_submenu + 1) % 6;break;
						case 2: selected_submenu = (selected_submenu + 1) % 24;break;
						case 3: selected_submenu = (selected_submenu + 1) % 18;break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1: selected_subsubmenu = (selected_subsubmenu + 1) % 12;break;
					}
					break;
			}
			break;

		case SWAP_KEY_CLR:

			switch(focus_selector){
				case 0:
					selected_menu = 0;
					ChangeMode(1);
					break;
				case 1:
					focus_selector = 0;
					selected_submenu = 0;
					break;
				case 2:
					focus_selector = 1;
					selected_subsubmenu = 0;
					break;
			}
			break;

		case SWAP_KEY_OK:

			switch(focus_selector){
				case 0:
					if(selected_menu < 4){
						focus_selector = 1;
					}
					else{
						selected_menu = 0;
						ChangeMode(1);
					}
					break;
				case 1:
					switch(selected_menu){
						case 1:	focus_selector = 2;break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1:
							//장비 교체
							Temp = Player.Equip[selected_submenu];
							Player.Equip[selected_submenu] = Equipment[selected_subsubmenu].ListNumber;
							Equipment[selected_subsubmenu].ListNumber = Temp;
							Temp = Player.Upgrade[selected_submenu];
							Player.Upgrade[selected_submenu] = Equipment[selected_subsubmenu].Quantity;
							Equipment[selected_subsubmenu].Quantity = Temp;
							//선택 완료, 부위 선택으로 돌아감
							focus_selector = 1;
							break;
					}
					break;
			}
			break;
	}
}
