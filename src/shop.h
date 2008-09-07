int SellOrBuy = 0;			//상점 구입인지 판매인지

//14번 이벤트 라인{14,*,*,*} - 상점처리(시세비율, 판매리스트처음, 판매리스트끝),카테고리별 구분 요망
int Shopping(int Sise, int SellListFront, int SellListRear){
	int i;
	string Temp;
	int ListLength;

	switch(EventStatus){
		case 0:		//아이템 구입인지 판매인지 선택
			CopyImage(73, 185, interface_yesno);
			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			DrawStr(120, 195, "구입");
			DrawStr(120, 214, "판매");
			CopyImage(78, 190 + SellOrBuy * 19, interface_selyesno);		//선택한 항목 표시
			CopyImage(92, 235, interface_closeinfo);

			switch(NextKey){
				case SWAP_KEY_UP:
				case SWAP_KEY_DOWN:		SellOrBuy = (SellOrBuy + 1) % 2;break;
				case SWAP_KEY_OK:
					SelectedScroll = 0;		//스크롤 초기화
					SelectedAnswer = 0;		//선택 번호 초기화
					ThirdSelect = 1;	//선택 수량
					SecondSelect = 0;		//두번째 선택
					EventStatus = 1;		//아이템 구입으로
					break;
				case SWAP_KEY_CLR:
					SellOrBuy = 0;			//두번째 선택
					return 0;				//상점 종료
			}
			break;
		//거래 개시
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
			switch(SellOrBuy){
				//주인공의 구입
				case 0:
					switch(EventStatus){
						case 1:		//아이템 목록 선택
							ListLength = DrawSellShop(Sise, SellListFront, SellListRear);	//상점 창 기본 출력

							switch(NextKey){
//								case SWAP_KEY_LEFT:		SelectedAnswer = (SelectedAnswer - 10) >= 0 ? SelectedAnswer - 10 : SelectedAnswer;break;
//								case SWAP_KEY_RIGHT:	SelectedAnswer = (SelectedAnswer + 10) <= ListLength ? SelectedAnswer + 10 : SelectedAnswer;break;
//								case SWAP_KEY_UP:		SelectedAnswer = (ListLength + SelectedAnswer) % (ListLength + 1);break;
//								case SWAP_KEY_DOWN:		SelectedAnswer = (SelectedAnswer + 1) % (ListLength + 1);break;
								case SWAP_KEY_UP:	//스크롤 위로 이동
									if(SelectedAnswer > 0)
										SelectedAnswer--;
									else{
										if(SelectedScroll > 0)SelectedScroll--;
										else {SelectedScroll = ListLength - 6; SelectedAnswer = 6;}
									}
									break;
								case SWAP_KEY_DOWN:	//스크롤 아래로 이동
									if(SelectedAnswer < 6)
										SelectedAnswer++;
									else{
										if(SelectedScroll < ListLength - 6)SelectedScroll++;
										else {SelectedScroll = 0; SelectedAnswer = 0;}
									}
									break;
								case SWAP_KEY_OK:		ThirdSelect = 1;EventStatus = 2;break;	//아이템 선택 -> 수량 1로 시작
								case SWAP_KEY_CLR:
									EventStatus = 0;
							}
							break;

						case 2:		//수량선택
							ListLength = DrawSellShop(Sise, SellListFront, SellListRear);	//상점 창 기본 출력
							SelectQuantity();												//수량 선택 출력

							switch(NextKey){
								case SWAP_KEY_RIGHT:	ThirdSelect = ThirdSelect % 99 + 1;break;
								case SWAP_KEY_LEFT:		ThirdSelect = (97 + ThirdSelect) % 99 + 1;break;
								case SWAP_KEY_DOWN:		ThirdSelect = (88 + ThirdSelect) % 99 + 1;break;
								case SWAP_KEY_UP:		ThirdSelect = (ThirdSelect + 9) % 99 + 1;break;
								case SWAP_KEY_OK:		EventStatus = 3;break;	//아이템 선택 -> 다음 명령에서 돈이 맞는지 확인해야함
								case SWAP_KEY_CLR:		EventStatus = 1;break;	//아이템 선택으로 넘어감
							}
							break;

						case 3:		//구입 확인 부분
							ListLength = DrawSellShop(Sise, SellListFront, SellListRear);	//상점 창 기본 출력

							CopyImage(0, 96, interface_oneline);
							SetFontType(S_FONT_LARGE, S_CYAN, S_BLACK, S_ALIGN_LEFT);
							if(Player.Gold < ItemList[SellItemList[SellListFront + SelectedAnswer + SelectedScroll]].Cost * (10 + Sise) / 10 * ThirdSelect){
								DrawStr(9, 103, "돈이 부족합니다.");
								if(NextKey == SWAP_KEY_OK || NextKey == SWAP_KEY_CLR) EventStatus = 1;		//아이템 선택으로 넘어감
							}else{
								MakeStr1(Temp, "%d AL입니다. 구입합니까?", ItemList[SellItemList[SellListFront + SelectedAnswer + SelectedScroll]].Cost * (10 + Sise) / 10 * ThirdSelect);
								DrawStr(9, 103, Temp);

								CopyImage(73, 121, interface_yesno);
								SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
								DrawStr(120, 131, "네");
								DrawStr(120, 150, "아니오");
								CopyImage(78, 126 + SecondSelect * 19, interface_selyesno);		//선택한 항목 표시

								switch(NextKey){
									case SWAP_KEY_UP:
									case SWAP_KEY_DOWN:	SecondSelect = (SecondSelect + 1) % 2;break;
									case SWAP_KEY_CLR:	SecondSelect = 0;EventStatus = 1;break;			//아이템 선택으로 넘어감, 네/아니오 선택 초기화
									case SWAP_KEY_OK:
										if(!SecondSelect){	//예를 선택했으니, 우선 인벤토리가 비었나 봄세↓
											EmptySlot = GetItem(0, SellItemList[SellListFront + SelectedAnswer + SelectedScroll], ThirdSelect);

											if(EmptySlot){	//구입 완료하였으면 돈을 감소
												Player.Gold = Player.Gold - ItemList[SellItemList[SellListFront + SelectedAnswer + SelectedScroll]].Cost * (10 + Sise) / 10 * ThirdSelect;
												EventStatus = 4;
											}
											else{			//구입 실패:슬롯없음
												EventStatus = 5;
											}					
										}
										else{				//아니오 선택했음
											SecondSelect = 0;	
											EventStatus = 1;	//아이템 선택으로 넘어감
										}
								}
							}
							break;

						case 4:		//구입 종료 확인 부분
							ListLength = DrawSellShop(Sise, SellListFront, SellListRear);	//상점 창 기본 출력

							CopyImage(0, 96, interface_oneline);
							SetFontType(S_FONT_LARGE, S_CYAN, S_BLACK, S_ALIGN_LEFT);
							DrawStr(9, 103, "구입을 완료 하였습니다.");

							switch(NextKey){
								//아이템 선택으로 넘어감
								case SWAP_KEY_OK:
								case SWAP_KEY_CLR:	EventStatus = 1;break;
							}
							break;

						case 5:		//구입 실패
							ListLength = DrawSellShop(Sise, SellListFront, SellListRear);	//상점 창 기본 출력

							CopyImage(0, 96, interface_oneline);
							SetFontType(S_FONT_LARGE, S_CYAN, S_BLACK, S_ALIGN_LEFT);
							DrawStr(9, 103, "슬롯이 없습니다.");

							switch(NextKey){
								//아이템 선택으로 넘어감
								case SWAP_KEY_OK:
								case SWAP_KEY_CLR:	EventStatus = 1;break;
							}
							break;
					}
					break;			//여기까지 주인공의 구입
				
				//주인공의 판매
				case 1:
					switch(EventStatus){
						//판매물품 선택
						case 1:
							DrawSellUser(Sise);														//주인공 판매 창 기본 출력	

							switch(NextKey){
								case SWAP_KEY_UP:	//스크롤 위로 이동
									if(SelectedAnswer > 0)
										SelectedAnswer--;
									else{
										if(SelectedScroll > 0)SelectedScroll--;
										else {SelectedScroll = 41; SelectedAnswer = 6;}
									}
									break;
								case SWAP_KEY_DOWN:	//스크롤 아래로 이동
									if(SelectedAnswer < 6)
										SelectedAnswer++;
									else{
										if(SelectedScroll < 41)SelectedScroll++;
										else {SelectedScroll = 0; SelectedAnswer = 0;}
									}
									break;
								case SWAP_KEY_OK:
									//아이템 선택 -> 수량 1로 시작
									if(Inventory[SelectedAnswer + SelectedScroll].ListNumber){
										ThirdSelect = 1;
										EventStatus = 2;
									}
									break;
								case SWAP_KEY_CLR:
									EventStatus = 0;
							}
							break;

						//수량선택
						case 2:
							DrawSellUser(Sise);														//주인공 판매 창 기본 출력	
							SelectQuantity();														//수량 선택 출력
							switch(NextKey){
								case SWAP_KEY_RIGHT:	ThirdSelect = ThirdSelect + 1 <= Inventory[SelectedAnswer + SelectedScroll].Quantity ? ThirdSelect + 1 : 1;break;
								case SWAP_KEY_LEFT:		ThirdSelect = ThirdSelect - 1 > 0 ? ThirdSelect - 1 : Inventory[SelectedAnswer + SelectedScroll].Quantity;break;
								case SWAP_KEY_DOWN:		ThirdSelect = ThirdSelect - 10 > 0 ? ThirdSelect - 10 : Inventory[SelectedAnswer + SelectedScroll].Quantity;break;
								case SWAP_KEY_UP:		ThirdSelect = ThirdSelect + 10 <= Inventory[SelectedAnswer + SelectedScroll].Quantity ? ThirdSelect + 10 : 1;break;
								case SWAP_KEY_OK:		EventStatus = 3;break;	//아이템 수량 선택 후 돈 확인
								case SWAP_KEY_CLR:		EventStatus = 1;break;	//아이템 선택으로 넘어감
							}
							break;

						//판매 확인
						case 3:
							DrawSellUser(Sise);												//주인공 판매 창 기본 출력	
								
							CopyImage(0, 96, interface_oneline);
							SetFontType(S_FONT_LARGE, S_CYAN, S_BLACK, S_ALIGN_LEFT);
							MakeStr1(Temp, "%d AL입니다. 판매합니까?", ItemList[Inventory[SelectedAnswer + SelectedScroll].ListNumber].Cost * (10 + Sise) / 20 * ThirdSelect);
							DrawStr(9, 103, Temp);

							CopyImage(73, 121, interface_yesno);
							SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
							DrawStr(120, 131, "네");
							DrawStr(120, 150, "아니오");
							CopyImage(78, 126 + SecondSelect * 19, interface_selyesno);		//선택한 항목 표시

							switch(NextKey){
								case SWAP_KEY_UP:
								case SWAP_KEY_DOWN:	SecondSelect = (SecondSelect + 1) % 2;break;
								case SWAP_KEY_CLR:	SecondSelect = 0;EventStatus = 1;break;	//아이템 선택으로 넘어감, 네/아니오 선택 초기화
								case SWAP_KEY_OK:
									if(!SecondSelect){	//예를 선택, 돈 증가 및 아이템 감소
										Player.Gold += ItemList[Inventory[SelectedAnswer + SelectedScroll].ListNumber].Cost * (10 + Sise) / 20 * ThirdSelect;
										Inventory[SelectedAnswer + SelectedScroll].Quantity -= ThirdSelect;
										//수량이 없으면 아이템 삭제(아이템없음으로)
										if(!Inventory[SelectedAnswer + SelectedScroll].Quantity) Inventory[SelectedAnswer + SelectedScroll].ListNumber = 0;
										EventStatus = 4;
									}else{				//아니오 선택했음
										SecondSelect = 0;	
										EventStatus = 1;	//아이템 선택으로 넘어감
									}
							}
							break;
						
						//판매 완료
						case 4:
							DrawSellUser(Sise);												//주인공 판매 창 기본 출력	

							CopyImage(0, 96, interface_oneline);
							SetFontType(S_FONT_LARGE, S_CYAN, S_BLACK, S_ALIGN_LEFT);
							DrawStr(9, 103, "판매를 완료 하였습니다.");

							switch(NextKey){
								//아이템 선택으로 넘어감
								case SWAP_KEY_OK:
								case SWAP_KEY_CLR:	EventStatus = 1;break;
							}
							break;
					}
					break;
			}
	}
	return 1;	//상점이 종료되지 않았음을 반환.
}

//상점 이벤트 관련 함수
int DrawSellShop(int Sise, int SellListFront, int SellListRear)
{
	int i;
	string Temp;
	int ListLength;

	ListLength = SellListRear - SellListFront;	//리스트 출력길이 구함

	CopyImage(0, 38, interface_oneline);
	CopyImage(0, 63, interface_playersell);
	CopyImage(92, 235, interface_closeinfo);

	//상점목록 출력
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(8, 45, "구입할 물품을 선택하세요");
	
	//ITEM ICON LIST
	for(i = 0; i < 7; i++){
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		CopyImage(11, 76  + (i%7) * 23, icon[ItemList[SellItemList[SellListFront + i + SelectedScroll]].Icon]);
		DrawStr(32, 75 + (i%7) * 23, ItemList[SellItemList[SellListFront + i + SelectedScroll]].Name);

		SetFontType(S_FONT_LARGE, S_YELLOW, S_BLACK, S_ALIGN_RIGHT);
		MakeStr1(Temp, "%d AL", ItemList[SellItemList[i + SelectedScroll]].Cost * (10 + Sise) / 10);
		DrawStr(220, 75 + (i%7) * 23, Temp);
	}
	CopyImage(5, 69 + (SelectedAnswer%7) * 23, interface_sellist);	//아이템 선택 표시
	CopyImage(225, 75 + (SelectedAnswer + SelectedScroll) * 133 / ListLength, interface_scroll);	//스크롤바 표시

	return ListLength;
}

void DrawSellUser(int Sise)
{
	string Temp;
	int i;	

	CopyImage(0, 38, interface_oneline);
	CopyImage(0, 63, interface_playersell);
	CopyImage(92, 235, interface_closeinfo);

	//주인공 판매 목록 출력
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(8, 45, "판매할 물품을 선택하세요");
		
	//ITEM ICON LIST
	for(i = 0; i < 7; i++){
		CopyImage(11, 76  + (i%7) * 23, icon[ItemList[Inventory[i + SelectedScroll].ListNumber].Icon]);
		//아이템 이름 출력
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(32, 75 + (i%7) * 23, ItemList[Inventory[i + SelectedScroll].ListNumber].Name);

		if(Inventory[i + SelectedScroll].ListNumber){
			//수량표시
			SetFontType(S_FONT_LARGE, S_GREEN, S_BLACK, S_ALIGN_LEFT);
			MakeStr1(Temp, " x %d", Inventory[i + SelectedScroll].Quantity);
			DrawStr(32 + StrLen(ItemList[Inventory[i + SelectedScroll].ListNumber].Name) * 6, 76 + (i%7) * 23, Temp);

			//시세의 절반 가격에 팔림을 가정
			SetFontType(S_FONT_LARGE, S_CYAN, S_BLACK, S_ALIGN_RIGHT);
			MakeStr1(Temp, "%d AL", ItemList[Inventory[i + SelectedScroll].ListNumber].Cost * (10 + Sise) / 20);
			DrawStr(220, 75 + (i%7) * 23, Temp);
		}
	}
	CopyImage(5, 69 + (SelectedAnswer%7) * 23, interface_sellist);	//아이템 선택 표시
	CopyImage(225, 75 + (SelectedAnswer + SelectedScroll) * 133 / (InventorySize-1), interface_scroll);	//스크롤바 표시
}

void SelectQuantity()
{
	string Temp;

	MakeStr1(Temp, "%2d EA", ThirdSelect);
	SetFontType(S_FONT_LARGE, S_YELLOW, S_BLACK, S_ALIGN_LEFT);				//아이템 선택 수량 출력
	if(SelectedAnswer%7 < 3){
		CopyImage(92, 137, interface_selquantity);
		DrawStr(100, 144, Temp);
	}else{
		CopyImage(92, 103, interface_selquantity);
		DrawStr(100, 110, Temp);
	}

}