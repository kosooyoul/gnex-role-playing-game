struct Slot QuickSlot[QuickSlotSize];	//퀵슬롯 크기(아이템번호, 카테고리 사용)
int focus_selector = 0;					//조작중인 메뉴의 위치(0:상위1,1:상위2,..)
int selected_menu = 0;					//선택한 상위 메뉴
int selected_submenu = 0;				//선택한 하위1 메뉴
int selected_subsubmenu = 0;			//선택한 하위2 메뉴
int selected_subsubsubmenu = 0;			//선택한 하위3 메뉴
int selected_subsubsubsubmenu = 0;		//선택한 하위4 메뉴
int selected_subsubsubsubsubmenu = 0;	//선택한 하위5 메뉴
int selected_line = 0;					//선택한 리스트의 라인 이동수

int QuickSlot_VIEW = 0;					//보고자 하는 퀵슬롯 (A,B,C)
int INTER_MSG_LIST_VIEW = 9;			//메시지 보일 시작부분 0 ~ 9
int INTER_MSG_LIST_LAST = 0;			//가장 마지막으로 날라온 메시지 카운터
										//메시지 목록(12문장)
string INTER_MSG_LIST[12] = {"","","","","","","","","http://www.ahyane.net","퀵슬롯 전환은 '8'과 '0'버튼 이용","메뉴이용은 'CLR'버튼 이용","메시지 목록 스크롤은 '#'버튼입니다."};

//퀵슬롯 설정 :: 테스트
void SetQuickSlot(){
	int i;
	for(i = 0; i < QuickSlotSize; i++){
		QuickSlot[i].ListNumber = 0;
		QuickSlot[i].Quantity = -1;
	}
}

//인터페이스 메시지 리스트 추가
void INTER_ADD_MSG_LIST(int MSGNUM){
	//메시지 갱신
	int font_width, font_num;					//한 폰트의 길이, 한 줄에 가능한 글자 수
	int first_pos = 0;							//각 문장의 처음 위치
	int empty_pos = 0;							//문장의 마지막 위치
	int all_size = StrLen(Message[MSGNUM]);		//주어진 문장 전체 길이
	string str_div;								//잘린 문자열
	int i, j;

	font_width = GetFontWidth();        //한 폰트의 길이
										//여백을 뺀 공간에 들어가는 글자수
	font_num = (swWidth - 20) / font_width;

	while(1){
		StrSub(str_div, Message[MSGNUM], first_pos, first_pos + font_num);
		for(i = 0; i < font_num;){
			if(GetChar(str_div, i) & 0x80){					//한글은 첫 bit가 1 (음수형태)
				if(i + 1 == font_num) break;					//한글이 문장 마지막에 걸칠 경우
				else i += 2;
			}else i++;
			empty_pos = i;										//문장의 마지막 위치 값을 입력
		}
		StrSub(INTER_MSG_LIST[INTER_MSG_LIST_LAST], Message[MSGNUM], first_pos, empty_pos);

		if(first_pos >= all_size) break;					//while(1) 종료 조건 (전체 글자 모두 출력되면)

		INTER_MSG_LIST_LAST = (INTER_MSG_LIST_LAST + 1)  % 12;	//마지막 위치 변경

		first_pos += empty_pos;								//다음줄 계산
	}
	INTER_MSG_LIST_VIEW = 9;

}

//인터페이스 그리기
void DrawInterface(){
	int i;
	string Temp;

	//인터페이스_상위 게이지 바탕 이미지 출력
	CopyImage(28, 9, interface_top1);
	CopyImage(28, 20, interface_top1);

	//게이지 출력 : HP / SP
	//SetColorRGB(200, 130, 50);
	CopyImage(Player.HP * 50 / Player.MAXHP - 22, 9, interface_top2);
	//SetColorRGB(50, 130, 200);
	CopyImage(Player.SP * 50 / Player.MAXSP - 22, 20, interface_top3);
	
	//인터페이스_상위 이미지 출력
	CopyImage(0, 0, interface_top_left);
	CopyImage(0, 0, interface_top_right);
	CopyImage(0, 0, interface_top_exp);

	//게이지 출력 : EXP
	//SetColorRGB(130, 70, 160);
	CopyImage(Player.EXP * 240 / Player.MAXEXP - 240, 33, interface_top4);

	//레벨 표시
	//SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_CENTER);
	//MakeStr1(Temp, "%d", Player.LV);
	//DrawStr(25, 2, Temp);

	//체력 표시
	//SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	//MakeStr1(Temp, "%d", Player.HP);
	//DrawStr(70, 13, Temp);

	//마나 표시
	//MakeStr1(Temp, "%d", Player.SP);
	//DrawStr(70, 22, Temp);

	//경험치 표시
	//SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);
	//MakeStr1(Temp, "%d", Player.EXP * 100 / Player.MAXEXP);
	//DrawStr(72, 3, Temp);
	//DrawStr(71, 2, Temp);
	//DrawStr(73, 2, Temp);
	//DrawStr(72, 1, Temp);
	//SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
	//DrawStr(72, 2, Temp);

	//하단 인터페이스 표시
	CopyImage(0, 241, interface_bottom);
	CopyImage(228, 251 + INTER_MSG_LIST_VIEW, interface_scroll);	//메시지 스크롤

	//맵이름 및 좌표
	//SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_CENTER);
	//DrawStr(126, 289, Area[Player.map].name);
	//MakeStr1(Temp, "%d", Player.x);
	//DrawStr(179, 289, Temp);
	//MakeStr1(Temp, "%d", Player.y);
	//DrawStr(201, 289, Temp);

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);		//메시지 표시
	for(i = 0; i < 3; i++)DrawStr(6, 246 + i * 12, INTER_MSG_LIST[(i + INTER_MSG_LIST_VIEW + INTER_MSG_LIST_LAST)%12]);
	
	//*/접촉중인 이벤트_테스트코드
	if(SerchEvent()){
		SetColor(S_BLACK);
		FillRectEx(120 - 42, 94, 120 + 41, 106, 2);
		CopyImage(120, 90, interface_who);
		MakeStrStr(Temp, "%s?", NameList[EventObject[SerchEvent() - 1].NameNumber - 1]);
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
		DrawStr(120, 95, Temp);
	}//*/

	DrawQuickSlot();
	
	//돈 표시
	//SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);
	//MakeStr1(Temp, "%d\%", Player.Gold);
	//DrawStr(56, 289, Temp);
}

void DrawQuickSlot(){
	int i;
	string Temp;
	//선택된 퀵슬롯 심볼 출력
	CopyImage(225, 3, symbol_qs[QuickSlot_VIEW]);

	//퀵슬롯 표시
	for(i = QuickSlot_VIEW * 6; i < QuickSlot_VIEW * 6 + QuickSlotWidth; i++){
		if(QuickSlot[i].Quantity == 0){					//아이템인 경우 : 0
			CopyImage((i % QuickSlotWidth) * 21 + 96, 16, icon[ItemList[Inventory[QuickSlot[i].ListNumber].ListNumber].Icon]);
			if(Inventory[QuickSlot[i].ListNumber].ListNumber){	//아이템이 있으면 수량 표시
				MakeStr1(Temp, "%d", Inventory[QuickSlot[i].ListNumber].Quantity);
				SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
				DrawStr((i % QuickSlotWidth) * 21 + 109, 24, Temp);
				DrawStr((i % QuickSlotWidth) * 21 + 110, 23, Temp);
				SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
				DrawStr((i % QuickSlotWidth) * 21 + 110, 24, Temp);
			}
		}else if(QuickSlot[i].Quantity == 1){			//스킬인 경우 : 1
			CopyImage((i % QuickSlotWidth) * 21 + 96, 16, icon[SkillList[SkillSlot[QuickSlot[i].ListNumber].ListNumber].Icon]);
			if(SkillSlot[QuickSlot[i].ListNumber].ListNumber){	//아이템이 있으면 수량 표시
				MakeStr1(Temp, "L_%d", SkillSlot[QuickSlot[i].ListNumber].Quantity);
				SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
				DrawStr((i % QuickSlotWidth) * 21 + 109, 24, Temp);
				DrawStr((i % QuickSlotWidth) * 21 + 110, 23, Temp);
				SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
				DrawStr((i % QuickSlotWidth) * 21 + 110, 24, Temp);
			}
		}
	}
}

//메뉴 > 베이스 출력
void DrawMenu(int win_x, int win_y){
	int i;

	//CopyImage(52, 63, interface_window);
				
	if(selected_menu < 3){
		CopyImage(52, 63, interface_menu[selected_menu]);							//내용
	}else if(selected_menu < 5){
		CopyImage(52, 63, interface_menu[selected_menu-1]);							//내용
	}

	for(i = 0; i < 6; i++){
		CopyImage(12, 58 + i * 28, interface_button[i]);							//상위1메뉴 출력
		if(i == selected_menu){
			if(focus_selector == 0)
				CopyImage(14, 60 + selected_menu * 28, interface_selmenu);			//상위1메뉴 커서
			else
				CopyImage(12, 58 + selected_menu * 28, interface_entered[selected_menu]);
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
	StrSub(TempString, ItemList[Inventory[selected_submenu].ListNumber].Tip, 0, 24);
	DrawStr(61, 104, TempString);

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_RIGHT);

	//MONEY
	CopyImage(200, 198, interface_al);
	MakeStr1(TempString, "%d AL", Player.Gold);
	DrawStr(192, 198, TempString);

	MakeStr1(TempString, "%d AL", ItemList[Inventory[selected_submenu].ListNumber].Cost / 2);
	DrawStr(209, 87, TempString);
	//ITEM ICON LIST
	for(i = selected_line * 6; i < 18 + selected_line * 6; i++){
		CopyImage(66 + (i%6) * 23, 127 + (i/6-selected_line) * 23, icon[ItemList[Inventory[i].ListNumber].Icon]);
		//아이템이 있으면 수량 표시
		if(Inventory[i].ListNumber){
			MakeStr1(TempString, "%d", Inventory[i].Quantity);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
			DrawStr((i%6) * 23 + 79,(i/6-selected_line) * 23 + 135, TempString);
			DrawStr((i%6) * 23 + 80,(i/6-selected_line) * 23 + 134, TempString);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
			DrawStr((i%6) * 23 + 80,(i/6-selected_line) * 23 + 135, TempString);
		}
	}
	if(focus_selector)CopyImage(60 + (selected_submenu%6) * 23, 121 + (selected_submenu/6-selected_line) * 23 , interface_selitem);

	CopyImage(200, 127 + selected_submenu * 40 / (InventorySize - 1), interface_scroll);	//스크롤바위치

	switch(focus_selector){
		//아이템선택시
		case 2:			
			CopyImage(82, 121, interface_infomenu);								//아이템 선택메뉴 보이기
			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			DrawStr(129, 132, "사용하기");
			DrawStr(129, 151, "버리기");
			DrawStr(129, 170, "퀵슬롯설정");
			DrawStr(129, 189, "설명보기");
			DrawStr(129, 208, "닫기");
			CopyImage(87, 126 + selected_subsubmenu * 19, interface_selyesno);	//아이템 선택위치표시
			break;
		//정말인지 물어봄
		case 3:
			switch(selected_subsubmenu){
				//아이템사용,버리기
				case 0:
				case 1:
					CopyImage(0, 119, interface_oneline);									//안내문 표시
					CopyImage(82, 144, interface_yesno);									//네, 아니오 메뉴 표시
					CopyImage(87, 149 + selected_subsubsubmenu * 19, interface_selyesno);	//선택 위치 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					DrawStr(129, 154, "네");
					DrawStr(129, 173, "아니오");
					if(selected_subsubmenu == 0){
						MakeStrStr(TempString, "[%s]사용합니까?", ItemList[Inventory[selected_submenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubmenu == 1){
						MakeStrStr(TempString, "[%s]버립니까?", ItemList[Inventory[selected_submenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}
					break;
				//퀵슬롯
				case 2:
					CopyImage(52, 119, interface_setquick);			//퀵슬롯 설정 창
					CopyImage(108, 214, interface_closeinfo);		//퀵슬롯 설정 창 닫기
					//퀵슬롯 표시 : 임시 - 인벤토리출력
					for(i = 0; i < 18; i++){
						if(QuickSlot[i].Quantity == 0){				//아이템인 경우 : 0
							CopyImage(i%6 * 23 + 79, i/6 * 23 + 146, icon[ItemList[Inventory[QuickSlot[i].ListNumber].ListNumber].Icon]);
							if(Inventory[QuickSlot[i].ListNumber].ListNumber){	//아이템이 있으면 수량 표시
								MakeStr1(TempString, "%d", Inventory[QuickSlot[i].ListNumber].Quantity);
								SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
								DrawStr(i%6 * 23 + 92, i/6 * 23 + 154, TempString);
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 153, TempString);
								SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 154, TempString);
							}
						}
						else if(QuickSlot[i].Quantity == 1){		//스킬인 경우 : 1
							CopyImage(i%6 * 23 + 79, i/6 * 23 + 146, icon[SkillList[SkillSlot[QuickSlot[i].ListNumber].ListNumber].Icon]);
							if(SkillSlot[QuickSlot[i].ListNumber].ListNumber){	//스킬이 있으면 수치 표시
								MakeStr1(TempString, "L_%d", SkillSlot[QuickSlot[i].ListNumber].Quantity);
								SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
								DrawStr(i%6 * 23 + 92, i/6 * 23 + 154, TempString);
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 153, TempString);
								SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 154, TempString);
							}
						}
					}
					//퀵슬롯 설정할 아이콘 및 위치 표시
					CopyImage(selected_subsubsubmenu%6 * 23 + 69, selected_subsubsubmenu/6 * 23 + 136, interface_cell);
					CopyImage(selected_subsubsubmenu%6 * 23 + 75, selected_subsubsubmenu/6 * 23 + 142, icon[ItemList[Inventory[selected_submenu].ListNumber].Icon]);
					MakeStr1(TempString, "%d", Inventory[selected_submenu].Quantity);
					SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수치그림자
					DrawStr(selected_subsubsubmenu%6 * 23 + 88, selected_subsubsubmenu/6 * 23 + 150, TempString);
					DrawStr(selected_subsubsubmenu%6 * 23 + 89, selected_subsubsubmenu/6 * 23 + 149, TempString);
					SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수치표시
					DrawStr(selected_subsubsubmenu%6 * 23 + 89, selected_subsubsubmenu/6 * 23 + 150, TempString);
					break;

				//설명보기
				case 3:
					CopyImage(57, 119, interface_infowindow);										//아이템 정보보기 창
					CopyImage(108, 213, interface_closeinfo);										//아이템 정보보기 창 닫기
					CopyImage(68, 130, icon[ItemList[Inventory[selected_submenu].ListNumber].Icon]);//아이템 아이콘 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
					DrawStr(90, 133, ItemList[Inventory[selected_submenu].ListNumber].Name);		//아이템 이름 표시
																									//아이템 설명 표시
					DrawMultiLineText(ItemList[Inventory[selected_submenu].ListNumber].Tip, 67, 45, 153, 13);
					break;
			}
			break;
		//처리 확인 메시지
		case 4:
			switch(selected_subsubmenu){
				case 0:
				case 1:
					CopyImage(0, 119, interface_oneline);							//안내문 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					if(selected_subsubmenu == 0){
						MakeStrStr(TempString, "[%s]사용했습니다.", ItemList[Inventory[selected_submenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubmenu == 1){
						DrawStr(120, 126, "아이템을 버렸습니다.");
					}
					break;
			}
	}

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
	StrSub(TempString, SkillList[SkillSlot[selected_submenu].ListNumber].Tip, 0, 24);
	DrawStr(61, 104, TempString);

	//남은 스킬포인트
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
	CopyImage(200, 198, interface_point);
	MakeStr1(TempString, "%d", Player.SKILL);
	DrawStr(192, 198, TempString);
	
	MakeStr1(TempString, "%d SP", SkillList[SkillSlot[selected_submenu].ListNumber].SP);
	DrawStr(209, 87, TempString);
	//SKILL ICON LIST
	for(i = selected_line * 6; i < 18 + selected_line * 6; i++){
		CopyImage(66 + (i%6) * 23, 127 + (i/6-selected_line) * 23, icon[SkillList[SkillSlot[i].ListNumber].Icon]);
		//스킬이 있으면 레벨 표시
		if(SkillSlot[i].ListNumber){
			MakeStr1(TempString, "L_%d", SkillSlot[i].Quantity);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//레벨그림자
			DrawStr((i%6) * 23 + 79,(i/6-selected_line) * 23 + 135, TempString);
			DrawStr((i%6) * 23 + 80,(i/6-selected_line) * 23 + 134, TempString);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//레벨표시
			DrawStr((i%6) * 23 + 80,(i/6-selected_line) * 23 + 135, TempString);
		}
	}
	if(focus_selector)CopyImage(60 + (selected_submenu%6) * 23, 121 + (selected_submenu/6-selected_line) * 23, interface_selitem);

	CopyImage(200, 127 + selected_submenu * 40 / (SkillSlotSize - 1), interface_scroll);	//스크롤바위치

	switch(focus_selector){
		//아이템선택시
		case 2:			
			CopyImage(82, 121, interface_infomenu);								//스킬 선택메뉴 보이기
			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			DrawStr(129, 132, "사용하기");
			DrawStr(129, 151, "강화하기");
			DrawStr(129, 170, "퀵슬롯설정");
			DrawStr(129, 189, "설명보기");
			DrawStr(129, 208, "닫기");
			CopyImage(87, 126 + selected_subsubmenu * 19, interface_selyesno);	//아이템 선택위치표시
			break;
		//정말인지 물어봄
		case 3:
			switch(selected_subsubmenu){
				//스킬사용,강화하기
				case 0:
				case 1:
					CopyImage(0, 119, interface_oneline);									//안내문 표시
					CopyImage(82, 144, interface_yesno);									//네, 아니오 메뉴 표시
					CopyImage(87, 149 + selected_subsubsubmenu * 19, interface_selyesno);	//선택 위치 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					DrawStr(129, 154, "네");
					DrawStr(129, 173, "아니오");
					if(selected_subsubmenu == 0){
						MakeStrStr(TempString, "[%s]사용합니까?", SkillList[SkillSlot[selected_submenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubmenu == 1){
						MakeStrStr(TempString, "[%s]강화합니까?", SkillList[SkillSlot[selected_submenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}
					break;
				//퀵슬롯
				case 2:
					CopyImage(52, 119, interface_setquick);			//퀵슬롯 설정 창
					CopyImage(108, 214, interface_closeinfo);		//퀵슬롯 설정 창 닫기
					//퀵슬롯 표시 : 임시 - 인벤토리출력
					for(i = 0; i < 18; i++){
						if(QuickSlot[i].Quantity == 0){						//아이템인 경우 : 0
							CopyImage(i%6 * 23 + 79, i/6 * 23 + 146, icon[ItemList[Inventory[QuickSlot[i].ListNumber].ListNumber].Icon]);
							if(Inventory[QuickSlot[i].ListNumber].ListNumber){	//아이템이 있으면 수량 표시
								MakeStr1(TempString, "%d", Inventory[QuickSlot[i].ListNumber].Quantity);
								SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
								DrawStr(i%6 * 23 + 92, i/6 * 23 + 154, TempString);
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 153, TempString);
								SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 154, TempString);
							}
						}
						else if(QuickSlot[i].Quantity == 1){				//스킬인 경우 : 1
							CopyImage(i%6 * 23 + 79, i/6 * 23 + 146, icon[SkillList[SkillSlot[QuickSlot[i].ListNumber].ListNumber].Icon]);
							if(SkillSlot[QuickSlot[i].ListNumber].ListNumber){	//스킬이 있으면 수치 표시
								MakeStr1(TempString, "L_%d", SkillSlot[QuickSlot[i].ListNumber].Quantity);
								SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수량그림자
								DrawStr(i%6 * 23 + 92, i/6 * 23 + 154, TempString);
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 153, TempString);
								SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수량표시
								DrawStr(i%6 * 23 + 93, i/6 * 23 + 154, TempString);
							}
						}
					}
					//퀵슬롯 설정할 아이콘 및 위치 표시
					CopyImage(selected_subsubsubmenu%6 * 23 + 69, selected_subsubsubmenu/6 * 23 + 136, interface_cell);
					CopyImage(selected_subsubsubmenu%6 * 23 + 75, selected_subsubsubmenu/6 * 23 + 142, icon[SkillList[SkillSlot[selected_submenu].ListNumber].Icon]);
					MakeStr1(TempString, "L_%d", SkillSlot[selected_submenu].Quantity);
					SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);//수치그림자
					DrawStr(selected_subsubsubmenu%6 * 23 + 88, selected_subsubsubmenu/6 * 23 + 150, TempString);
					DrawStr(selected_subsubsubmenu%6 * 23 + 89, selected_subsubsubmenu/6 * 23 + 149, TempString);
					SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);//수치표시
					DrawStr(selected_subsubsubmenu%6 * 23 + 89, selected_subsubsubmenu/6 * 23 + 150, TempString);
					break;

				//설명보기
				case 3:
					CopyImage(57, 119, interface_infowindow);											//스킬 정보보기 창
					CopyImage(108, 213, interface_closeinfo);											//스킬 정보보기 창 닫기
					CopyImage(68, 130, icon[SkillList[SkillSlot[selected_submenu].ListNumber].Icon]);	//스킬 아이콘 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
					DrawStr(90, 133, SkillList[SkillSlot[selected_submenu].ListNumber].Name);			//스킬 이름 표시
																										//스킬 설명 표시
					DrawMultiLineText(SkillList[SkillSlot[selected_submenu].ListNumber].Tip, 67, 45, 153, 13);
					break;
			}
			break;
		//처리 확인 메시지
		case 4:
			switch(selected_subsubmenu){
				case 0:
				case 1:
					CopyImage(0, 119, interface_oneline);							//안내문 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					if(selected_subsubmenu == 0){
						MakeStrStr(TempString, "[%s]사용했습니다.", SkillList[SkillSlot[selected_submenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubmenu == 1){
						switch(selected_subsubsubsubmenu){
							case 0:	DrawStr(120, 126, "레벨이 최대치입니다.");break;
							case 1:	DrawStr(120, 126, "스킬 포인트가 없습니다.");break;
							case 2:
								MakeStrStr(TempString, "[%s]강화하였습니다.", SkillList[SkillSlot[selected_submenu].ListNumber].Name);
								DrawStr(120, 126, TempString);
								break;
						}
					}
					break;
			}
	}
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
	StrSub(TempString, EquipList[Player.Equip[selected_submenu]].Tip, 0, 24);
	DrawStr(60, 87, TempString);

	//EQUIP ICON LIST
	for(i = 0; i < 6; i++){
		CopyImage(66 + (i%6) * 23, 110, icon[EquipList[Player.Equip[i]].Icon]);
		//장비가 있으면 인챈트 표시
		if(Player.Equip[i]){
			MakeStr1(TempString, "U_%d", Player.Upgrade[i]);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//레벨그림자
			DrawStr((i%6) * 23 + 79, 118, TempString);
			DrawStr((i%6) * 23 + 80, 117, TempString);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//레벨표시
			DrawStr((i%6) * 23 + 80, 118, TempString);
		}
	}
	if(focus_selector)CopyImage(60 + (selected_submenu) * 23, 104, interface_selitem);

	//선택 부위의 장비 선택목록
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(60, 133, EquipType[EquipList[Equipment[selected_subsubmenu]].Type]);			//장비 타입 출력
	DrawStr(103, 133, EquipList[Equipment[selected_subsubmenu].ListNumber].Name);			//장비 이름출력
	MakeStr1(TempString, "+ %d", Equipment[selected_subsubmenu].Quantity);
	DrawStr(191, 133, TempString);															//장비 인챈트 출력
	StrSub(TempString, EquipList[Equipment[selected_subsubmenu].ListNumber].Tip, 0, 24);
	DrawStr(60, 150, TempString);
	//선택목록 ICON LIST
	for(i = selected_line * 6; i < 12 + selected_line * 6; i++){
		CopyImage(66 + (i%6) * 23, 173 + (i/6-selected_line) * 23, icon[EquipList[Equipment[i].ListNumber].Icon]);
		//장비가 있으면 인챈트 표시
		if(Equipment[i].ListNumber){
			MakeStr1(TempString, "U_%d", Equipment[i].Quantity);
			SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//인챈트그림자
			DrawStr((i%6) * 23 + 79, (i/6-selected_line) * 23 + 181, TempString);
			DrawStr((i%6) * 23 + 80, (i/6-selected_line) * 23 + 180, TempString);
			SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//인챈트표시
			DrawStr((i%6) * 23 + 80, (i/6-selected_line) * 23 + 181, TempString);
		}
	}
	CopyImage(200, 173 + selected_subsubmenu * 17 / (EquipmentSize - 1), interface_scroll);	//스크롤바위치

	switch(focus_selector){
		//하단 목록
		case 2:
			CopyImage(60 + (selected_subsubmenu%6) * 23, (selected_subsubmenu/6-selected_line) * 23 + 167, interface_selitem);	//하단 장비 목록의 커서
			break;
		//장비선택시
		case 3:			
			CopyImage(82, 121, interface_infomenu);								//스킬 선택메뉴 보이기
			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			DrawStr(129, 132, "장착하기");
			DrawStr(129, 151, "버리기");
			DrawStr(129, 170, "강화하기");
			DrawStr(129, 189, "설명보기");
			DrawStr(129, 208, "닫기");
			CopyImage(87, 126 + selected_subsubsubmenu * 19, interface_selyesno);	//아이템 선택위치표시
			break;
		//정말인지 물어봄,설명하기
		case 4:
			switch(selected_subsubsubmenu){
				//장착하기,버리기,강화하기
				case 0:
				case 1:
				case 2:
					CopyImage(0, 119, interface_oneline);										//안내문 표시
					CopyImage(82, 144, interface_yesno);										//네, 아니오 메뉴 표시
					CopyImage(87, 149 + selected_subsubsubsubmenu * 19, interface_selyesno);	//선택 위치 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					DrawStr(129, 154, "네");
					DrawStr(129, 173, "아니오");
					if(selected_subsubsubmenu == 0){
						MakeStrStr(TempString, "[%s]장착합니까?", EquipList[Equipment[selected_subsubmenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubsubmenu == 1){
						MakeStrStr(TempString, "[%s]버립니까?", EquipList[Equipment[selected_subsubmenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubsubmenu == 2){
						MakeStrStr(TempString, "[%s]강화합니까?", EquipList[Equipment[selected_subsubmenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}
					break;

				//설명보기
				case 3:
					CopyImage(57, 119, interface_infowindow);												//장비 정보보기 창
					CopyImage(108, 213, interface_closeinfo);												//장비 정보보기 창 닫기
					CopyImage(68, 130, icon[EquipList[Equipment[selected_subsubmenu].ListNumber].Icon]);	//장비 아이콘 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
					DrawStr(90, 133, EquipList[Equipment[selected_subsubmenu].ListNumber].Name);			//장비 이름 표시
																											//장비 설명 표시
					DrawMultiLineText(EquipList[Equipment[selected_subsubmenu].ListNumber].Tip, 67, 45, 153, 13);
					break;
			}
			break;
		//처리 확인 메시지
		case 5:
			switch(selected_subsubsubmenu){
				case 0:
				case 1:
				case 2:
					CopyImage(0, 119, interface_oneline);							//안내문 표시
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					if(selected_subsubsubmenu == 0){
						if(selected_subsubsubsubsubmenu == 0)
							MakeStrStr(TempString, "[%s]장착했습니다.", EquipList[Player.Equip[selected_submenu]].Name);
						if(selected_subsubsubsubsubmenu == 1)
							MakeStrStr(TempString, "장비 종류가 다릅니다.", EquipList[Equipment[selected_subsubmenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubsubmenu == 1){
						MakeStrStr(TempString, "[%s]버렸습니다.", EquipList[Equipment[selected_subsubmenu].ListNumber].Name);
						DrawStr(120, 126, TempString);
					}else if(selected_subsubsubmenu == 2){
						switch(selected_subsubsubsubsubmenu){
							case 0:	DrawStr(120, 126, "더 이상 강화 할 수 없습니다.");break;
							case 1:	DrawStr(120, 126, "강화 아이템이 부족합니다. 설명 참고");break;
							case 2:
								MakeStrStr(TempString, "[%s]강화하였습니다.", EquipList[Equipment[selected_subsubmenu].ListNumber].Name);
								DrawStr(120, 126, TempString);
								break;
						}
					}
					break;
			}
	}
}

//메뉴 출력을 위한 키처리
void ShowMenu(int Key){
	int Temp;						//Swap Data
	
	switch (Key){
		case SWAP_KEY_1:
		case SWAP_KEY_2:
		case SWAP_KEY_3:
		case SWAP_KEY_4:
		case SWAP_KEY_5:
			if(focus_selector == 0){
				selected_menu = Key - 1;
				focus_selector = 1;
			}
			break;

		case SWAP_KEY_UP:
			switch(focus_selector){
				case 0:
					selected_menu = (selected_menu + 5) % 6;
					break;
				case 1:
					switch(selected_menu){
						case 0: break;
						case 1: break;
						case 2:
							selected_submenu = (InventorySize + selected_submenu - 6) % InventorySize;
							//리스트 스크롤
							if(selected_line * 6 > selected_submenu)selected_line--;
							else if(InventorySize - 6 <= selected_submenu) selected_line = InventorySize / 6 - 3;
							break;
						case 3:
							selected_submenu = (SkillSlotSize + selected_submenu - 6) % SkillSlotSize;
							//리스트 스크롤
							if(selected_line * 6 > selected_submenu)selected_line--;
							else if(SkillSlotSize - 6 <= selected_submenu) selected_line = SkillSlotSize / 6 - 3;
							break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1: 
							selected_subsubmenu = (EquipmentSize + selected_subsubmenu - 6) % EquipmentSize;
							//리스트 스크롤
							if(selected_line * 6 > selected_subsubmenu)selected_line--;
							else if(EquipmentSize - 6 <= selected_subsubmenu) selected_line = 6;
							break;
						case 2:
						case 3:
							//아이템/스킬 선택후 메뉴 카운트 감소
							selected_subsubmenu = (5 + selected_subsubmenu - 1) % 5;
							break;
					}
					break;
				case 3:
					switch(selected_menu){
						//장비
						case 1:
							//장비 선택후 메뉴 카운트 증가
							selected_subsubsubmenu = (5 + selected_subsubsubmenu - 1) % 5;
							break;
						//아이템,스킬
						case 2:
						case 3:
							switch(selected_subsubmenu){
								//사용하기,버리기(강화하기)
								case 0:
								case 1:
									selected_subsubsubmenu = (selected_subsubsubmenu - 6) % 18;
									break;
								//퀵슬롯설정
								case 2:
									selected_subsubsubmenu = (18 + selected_subsubsubmenu - 6) % 18;
									break;
							}
							break;
					}
					break;

				case 4:
					if(selected_menu == 1){
						switch(selected_subsubsubmenu){
							//장착하기,버리기,강화하기)
							case 0:
							case 1:
							case 2:
								selected_subsubsubsubmenu = (selected_subsubsubsubmenu + 1) % 2;
								break;
						}
					}
					break;
			}
			break;

		case SWAP_KEY_DOWN:
			switch(focus_selector){
				case 0:
					selected_menu = (selected_menu + 1) % 6;
					break;
				case 1:
					switch(selected_menu){
						case 0: break;
						case 1: focus_selector = 2;break;
						case 2: 
							selected_submenu = (selected_submenu + 6) % InventorySize;
							//리스트 스크롤
							if(selected_line * 6 + 17 < selected_submenu)selected_line++;
							else if(6 > selected_submenu) selected_line = 0;
							break;

						case 3:
							selected_submenu = (selected_submenu + 6) % SkillSlotSize;
							//리스트 스크롤
							if(selected_line * 6 + 17 < selected_submenu)selected_line++;
							else if(6 > selected_submenu) selected_line = 0;
							break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1:
							selected_subsubmenu = (selected_subsubmenu + 6) % EquipmentSize;
							//리스트 스크롤
							if(selected_line * 6 + 11 < selected_subsubmenu)selected_line++;
							else if(6 > selected_subsubmenu) selected_line = 0;
							break;
						case 2:
						case 3:
							//아이템/스킬 선택후 메뉴 카운트 증가
							selected_subsubmenu = (selected_subsubmenu + 1) % 5;
							break;
					}
					break;
				case 3:
					switch(selected_menu){
						//장비
						case 1:
							//장비 선택후 메뉴 카운트 증가
							selected_subsubsubmenu = (selected_subsubsubmenu + 1) % 5;
							break;
						//아이템,스킬
						case 2:
						case 3:
							switch(selected_subsubmenu){
								//사용하기,버리기(강화하기)
								case 0:
								case 1:
									selected_subsubsubmenu = (selected_subsubsubmenu + 6) % 18;
									break;
								//퀵슬롯설정
								case 2:
									selected_subsubsubmenu = (selected_subsubsubmenu + 6) % 18;
									break;
							}
							break;
					}
					break;
				
				case 4:
					if(selected_menu == 1){
						switch(selected_subsubsubmenu){
							//장착하기,버리기,강화하기)
							case 0:
							case 1:
							case 2:
								selected_subsubsubsubmenu = (selected_subsubsubsubmenu + 1) % 2;
								break;
						}
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
						case 2:
							selected_submenu = (InventorySize + selected_submenu - 1) % InventorySize;
							//리스트 스크롤
							if(selected_line * 6 > selected_submenu)selected_line--;
							else if(InventorySize - 6 <= selected_submenu) selected_line = InventorySize / 6 - 3;
							break;
						case 3:
							selected_submenu = (SkillSlotSize + selected_submenu - 1) % SkillSlotSize;
							//리스트 스크롤
							if(selected_line * 6 > selected_submenu)selected_line--;
							else if(SkillSlotSize - 6 <= selected_submenu) selected_line = SkillSlotSize / 6 - 3;
							break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1:
							selected_subsubmenu = (EquipmentSize + selected_subsubmenu - 1) % EquipmentSize;
							//리스트 스크롤
							if(selected_line * 6 > selected_subsubmenu)selected_line--;
							else if(EquipmentSize - 6 <= selected_subsubmenu) selected_line = EquipmentSize / 6 - 2;
							break;
					}
					break;
				case 3:
					switch(selected_menu){
						case 2:
						case 3:
							switch(selected_subsubmenu){
								//퀵슬롯선택 이동
								case 2:
									selected_subsubsubmenu = (18 + selected_subsubsubmenu - 1) % 18;
									break;
							}
							break;
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
						case 2:
							selected_submenu = (selected_submenu + 1) % InventorySize;
							//리스트 스크롤
							if(selected_line * 6 + 23 < selected_submenu)selected_line++;
							else if(6 > selected_submenu) selected_line = 0;
							break;
						case 3:
							selected_submenu = (selected_submenu + 1) % SkillSlotSize;
							//리스트 스크롤
							if(selected_line * 6 + 17 < selected_submenu)selected_line++;
							else if(6 > selected_submenu) selected_line = 0;
							break;
					}
					break;
				case 2:
					switch(selected_menu){
						case 1:
							selected_subsubmenu = (selected_subsubmenu + 1) % EquipmentSize;
							if(selected_line * 6 + 11 < selected_subsubmenu)selected_line++;
							else if(6 > selected_subsubmenu) selected_line = 0;
							break;
					}
					break;
				case 3:
					switch(selected_menu){
						case 2:
						case 3:
							switch(selected_subsubmenu){
								//퀵슬롯선택 이동
								case 2:
									selected_subsubsubmenu = (selected_subsubsubmenu + 1) % 18;
									break;
							}
							break;
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
					selected_submenu = 0;						//선택 초기화 하위1
					selected_subsubmenu = 0;					//선택 초기화 하위2
					selected_line = 0;							//스크롤 초기화
					focus_selector = 0;
					break;
				case 2:
					switch(selected_menu){
						case 1:	break;
						case 2:
						case 3:	selected_subsubmenu = 0;break;
					}
				case 3:
					selected_subsubsubmenu = 0;
					focus_selector--;
					break;
				case 4:
					if(selected_menu == 1){
						selected_subsubsubsubmenu = 0;
						focus_selector--;
					}
			}
			break;

		case SWAP_KEY_OK:
			switch(focus_selector){
				case 0:
					if(selected_menu < 5){
						focus_selector = 1;
					}
					else{
						selected_menu = 0;
						ChangeMode(1);
					}
					break;

				//하위1
				case 1:
					switch(selected_menu){
						case 1:	focus_selector = 2;break;
						case 2:	if(Inventory[selected_submenu].ListNumber > 0)focus_selector = 2;break;
						case 3:	if(SkillSlot[selected_submenu].ListNumber > 0)focus_selector = 2;break;
					}
					break;

				//하위2
				case 2:
					switch(selected_menu){
						case 1:
							if(Equipment[selected_subsubmenu].ListNumber > 0){
								focus_selector = 3;
							}else{
								//장비 해제
								Temp = Player.Equip[selected_submenu];
								Player.Equip[selected_submenu] = Equipment[selected_subsubmenu].ListNumber;
								Equipment[selected_subsubmenu].ListNumber = Temp;
								Temp = Player.Upgrade[selected_submenu];
								Player.Upgrade[selected_submenu] = Equipment[selected_subsubmenu].Quantity;
								Equipment[selected_subsubmenu].Quantity = Temp;
								//선택 완료 메시지로
								selected_subsubsubsubsubmenu = 0;
								focus_selector = 1;
							}
							break;
						case 2:
						case 3:
							//아이템,스킬 선택 메뉴 선택(사용,버림/강화,퀵슬롯,설명)
							if(selected_subsubmenu == 4){
								selected_subsubmenu = 0;
								focus_selector = 1;
							}
							else focus_selector = 3;
							break;
					}
					break;
				//하위3
				case 3:
					switch(selected_menu){
						//장비
						case 1:
							//장비 선택 메뉴 선택(사용,버림,강화,설명,닫기)
							if(selected_subsubsubmenu == 4){
								selected_subsubsubmenu = 0;
								focus_selector = 2;
							}
							else focus_selector = 4;
							break;
						//아이템
						case 2:
							switch(selected_subsubmenu){
								//정말로 사용하는지 질문에 네,아니오 선택함
								case 0:
									if(selected_subsubsubmenu == 1){
										focus_selector = 2;
									}else{
										/*아이템 사용 루틴*/
										focus_selector = 4;
									}
									break;
								//정말로 버리는지 질문에 네,아니오 선택함
								case 1:
									if(selected_subsubsubmenu == 1){
										focus_selector = 2;
									}else{
										Inventory[selected_submenu].ListNumber = 0;
										Inventory[selected_submenu].Quantity = 0;
										focus_selector = 4;
									}
									break;
								//퀵슬롯설정
								case 2:
									QuickSlot[selected_subsubsubmenu].ListNumber = selected_submenu;
									QuickSlot[selected_subsubsubmenu].Quantity = 0;	//아이템인 경우 0
									selected_subsubmenu = 0;
									focus_selector = 1;
									break;
							}
							selected_subsubsubmenu = 0;
							break;
						//스킬
						case 3:
							switch(selected_subsubmenu){
								//정말로 사용하는지 질문에 네,아니오 선택함
								case 0:
									if(selected_subsubsubmenu == 1){
										focus_selector = 2;
									}else{
										/*아이템 사용 루틴*/
										focus_selector = 4;
									}
									break;
								//정말로 강화하는지 질문에 네,아니오 선택함
								case 1:
									if(selected_subsubsubmenu == 1){
										focus_selector = 2;
									}else{
										if(SkillSlot[selected_submenu].Quantity >= 9){
											selected_subsubsubsubmenu = 0;	//강화 불가능-스킬 레벨 만땅(>=9)
										}else if(!Player.SKILL){
											selected_subsubsubsubmenu = 1;	//강화 불가능-스킬포인트 부족
										}else{
											SkillSlot[selected_submenu].Quantity++;
											Player.SKILL--;
											selected_subsubsubsubmenu = 2;	//강화 성공
										}
										focus_selector = 4;
									}
									break;
								//퀵슬롯설정
								case 2:
									QuickSlot[selected_subsubsubmenu].ListNumber = selected_submenu;
									QuickSlot[selected_subsubsubmenu].Quantity = 1;	//스킬인경우 1
									selected_subsubmenu = 0;
									focus_selector = 1;
									break;
							}
							selected_subsubsubmenu = 0;
							break;
					}
					break;

				//하위4
				case 4:
					switch(selected_menu){
						//장비
						case 1:
							switch(selected_subsubsubmenu){
								//장착하기
								case 0:
									if(selected_subsubsubsubmenu == 1){
										focus_selector = 3;
									}else{
										//장비 타입이 맞으면 교체	//(EquipList[Equipment[selected_subsubmenu]].Type == 0) ||
										if(
										(selected_submenu == 0 && EquipList[Equipment[selected_subsubmenu]].Type == 1) ||
										((selected_submenu == 1 || selected_submenu == 2) && (EquipList[Equipment[selected_subsubmenu]].Type == 2)) ||
										(selected_submenu >= 3 && selected_submenu == EquipList[Equipment[selected_subsubmenu]].Type)){
											//장비 교체
											Temp = Player.Equip[selected_submenu];
											Player.Equip[selected_submenu] = Equipment[selected_subsubmenu].ListNumber;
											Equipment[selected_subsubmenu].ListNumber = Temp;
											Temp = Player.Upgrade[selected_submenu];
											Player.Upgrade[selected_submenu] = Equipment[selected_subsubmenu].Quantity;
											Equipment[selected_subsubmenu].Quantity = Temp;
											//선택 완료 메시지로
											selected_subsubsubsubsubmenu = 0;
										}else{
											selected_subsubsubsubsubmenu = 1;
										}
										focus_selector = 5;
									}
									break;
								//버리기
								case 1:
									if(selected_subsubsubsubmenu == 1){
										focus_selector = 3;
									}else{
										Equipment[selected_subsubmenu].ListNumber = 0;
										Equipment[selected_subsubmenu].Quantity = 0;
										focus_selector = 5;
									}
									break;
								//강화하기
								case 2:
									if(selected_subsubsubsubmenu == 1){
										focus_selector = 3;
									}else{
										if(Equipment[selected_subsubmenu].Quantity >= 9){
											selected_subsubsubsubsubmenu = 0;	//강화 불가능-장비 레벨 만땅(>=9)
										}else if(!Player.SKILL){				//임시___테스트
											selected_subsubsubsubsubmenu = 1;	//강화 불가능-아이템 부족
										}else{
											Equipment[selected_subsubmenu].Quantity++;
											Player.SKILL--;
											selected_subsubsubsubsubmenu = 2;	//강화 성공
										}
										focus_selector = 5;
									}
									break;
							}
							selected_subsubsubsubmenu = 0;
							break;

						//아이템,스킬
						case 2:
						case 3:
							//사용하기완료,버리기완료/강화하기 완료
							focus_selector = 1;
							selected_subsubmenu = 0;
							break;
					}
					break;
				
				//하위5
				case 5:
					switch(selected_menu){
						case 1:
							//장착완료,버리기완료,강화하기 완료
							focus_selector = 2;
							selected_subsubsubmenu = 0;
							break;
					}
			}
			break;
	}
}
