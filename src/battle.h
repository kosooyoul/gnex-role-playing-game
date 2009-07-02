int BattleLimitMoveX = 0;	//전장맵 이동 제한
int BattleLimitMoveY = 0;	//전장맵 이동 제한
struct Point SelectTarget;	//선택 대상

//15번 이벤트 라인{15,*,*} - 전투처리(적그룹번호, 맵종류)
int Battle(int EventNumber, int GrpNum, int BatMap){
	string Temp;
	int i, j;
	int TargetEnemy;

/*
	if(GrpNum == 0 && BatMap == 0){
		DrawBatMap(BatMap);			//전투맵출력
		DrawBatInterface;			//인터페이스출력
		DrawBatMenu(EventStatus);	//메뉴출력
	}
	//MakeStr2(Temp, "덱스 : 플레이어(%d)  적(%d)", Player.DEX, EnemyObject[GrpNum].DEX);
	//DrawStr(4,40,Temp);
	//MakeStr2(Temp, "턴수 : 플레이어(%d)  적(%d)", Player.Turn, EnemyObject[GrpNum].Turn);
	//DrawStr(4,60,Temp);
	//SetFontType(S_FONT_LARGE, S_RED, S_BLACK, S_ALIGN_LEFT);
	//MakeStr2(Temp, "전장좌표 : %d, %d", Player.BatX, Player.BatY);
	//DrawStr(4,70,Temp);
*/	

	if(EventStatus){
		SetColor(S_BLACK);
		FillRectEx(0, 32, 239, 256, 2);
		DrawBatInterface();
		DrawBatMap(GrpNum);		
	}	

	switch(EventStatus){
		//초기 설정
		case 0:
			//선택변수들 초기화
			SelectedAnswer = 0;
			SecondSelect = 0;

			for(i = 0; i < 10; i++)
				for(j = 0; j < 12; j++)
					BattleLayer[i][j] = 0;

			BattleLayer[Player.BatY][Player.BatX] = -1;

			//while(1){
				
				EnemyObject[GrpNum].BatX = EventObject[EventNumber].x - (Player.x - BattlePosX);
				EnemyObject[GrpNum].BatY = EventObject[EventNumber].y - (Player.y - BattlePosY);

				i = Area[Player.map].x_start + EnemyObject[GrpNum].BatX + Player.x-BattlePosX;
				j = Area[Player.map].y_start + EnemyObject[GrpNum].BatY + Player.y-BattlePosY;

				//
				BattleLayer[EnemyObject[GrpNum].BatY][EnemyObject[GrpNum].BatX] = GrpNum+1;
				/*
				if(SupLayer[j][i] <= _SupChipMoveable || SupLayer[j][i] > _SupChipWall){
					if(BattleLayer[EnemyObject[GrpNum].BatY][EnemyObject[GrpNum].BatX] == 0){
						BattleLayer[EnemyObject[GrpNum].BatY][EnemyObject[GrpNum].BatX] = GrpNum+1;
						break;
					}
				}*/
			//}
			EnemyObject[GrpNum].BatD = EventObject[EventNumber].direction;
			EnemyObject[GrpNum].HP = EnemyObject[GrpNum].MAXHP;
			EnemyObject[GrpNum].SP = EnemyObject[GrpNum].MAXSP;
			EventStatus = 1;

		//우선턴 결정
		case 1:
			BattleLimitMoveX = 0;	//이동제한 초기화
			BattleLimitMoveY = 0;
			
			if(EnemyObject[GrpNum].Turn < 10 && Player.Turn < 10){
				if(EnemyObject[GrpNum].DEX <= Player.DEX){
					Player.Turn += (Player.DEX + 1) * 10 / (EnemyObject[GrpNum].DEX + 1);
					EnemyObject[GrpNum].Turn += 10;
				}else{
					EnemyObject[GrpNum].Turn += EnemyObject[GrpNum].DEX * 10 / Player.DEX;
					Player.Turn += 10;
				}
			}
			else{
				if(EnemyObject[GrpNum].Turn <= Player.Turn){
					Player.Turn -= 10;
					EventStatus = 2;	//주인공 턴
				}else{
					EnemyObject[GrpNum].Turn -= 10;
					EventStatus = 3;	//몬스터 턴
				}
			}
			break;
		
		//주인공 턴
		case 2:

			switch(SelectedAnswer){
				//주인공턴-이동모드
				case 0:
					SetColor(S_CYAN);
					DrawLimitArea(Player.MOV + 1, Player.BatX-BattleLimitMoveX, Player.BatY-BattleLimitMoveY);

					switch(NextKey){
						case SWAP_KEY_UP:
							if(Player.BatY == 0)SelectedAnswer = 1;
							MoveBattleMap(NextKey);break;
						case SWAP_KEY_DOWN:
							if(Player.BatY == 9)SelectedAnswer = 1;
							MoveBattleMap(NextKey);break;
						case SWAP_KEY_LEFT:
							if(Player.BatX == 0)SelectedAnswer = 1;
							MoveBattleMap(NextKey);break;
						case SWAP_KEY_RIGHT:
							if(Player.BatX == 11)SelectedAnswer = 1;
							MoveBattleMap(NextKey);break;
						case SWAP_KEY_OK:
							SelectedAnswer = 2;break;	//메뉴 모드로
					}
					break;

				//주인공턴-도망갈지
				case 1:
					CopyImage(0, 114, interface_oneline);
					SetFontType(S_FONT_LARGE, S_YELLOW, S_BLACK, S_ALIGN_LEFT);
					DrawStr(9, 121, "전장에서 이탈합니까?");

					CopyImage(73, 139, interface_yesno);
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					DrawStr(120, 149, "아니오");
					DrawStr(120, 168, "이탈");

					CopyImage(78, 144 + SecondSelect * 19, interface_selyesno);		//선택한 항목 표시

					switch(NextKey){
						case SWAP_KEY_UP:
						case SWAP_KEY_DOWN:		SecondSelect = (SecondSelect + 1) % 2;break;	//메뉴이동
						case SWAP_KEY_CLR: 		SecondSelect = 0;SelectedAnswer = 0;break;		//취소:선택초기화,이동모드로
						case SWAP_KEY_OK:
							if(SecondSelect == 0){												//메뉴선택
								SelectedAnswer = 0;
							}else{																//도주처리
								EventStatus = 0;
								SelectedAnswer = 0;
								SecondSelect = 0;
								Player.BatX = 5;	//기본값으로 초기화(좌표)
								Player.BatY = 5;	//기본값으로 초기화(좌표)
								Player.BatD = Player.direction;	//기본값으로 초기화(방향)
								Player.Turn = 0;				//주인공 턴 초기화
								EnemyObject[GrpNum].Turn = 0;	//적 턴 초기화
								return 2;		//도주
							}
					}
					break;

				//주인공턴-메뉴모드
				case 2:

					//메뉴표시(휴식을 넣느냐 안넣느냐)
					if(Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY) == 0){
						for(i = 0; i < 7; i++){
							if(i == SecondSelect){
								CopyImage(140, 80+i*19, interface_batmenu[i]);
							}else{
								CopyImageEx(145, 80+i*19, interface_batmenu[i],2,0,0,0);
							}
						}
					}else{
						for(i = 0; i < 6; i++){
							if(i == SecondSelect){
								CopyImage(140, 80+i*19, interface_batmenu[i]);
							}else{
								CopyImageEx(145, 80+i*19, interface_batmenu[i],2,0,0,0);
							}
						}
					}

					switch(NextKey){
						//메뉴이동
						case SWAP_KEY_1:
						case SWAP_KEY_2:
						case SWAP_KEY_3:
						case SWAP_KEY_4:
						case SWAP_KEY_5:	SecondSelect = NextKey;break;
						case SWAP_KEY_6:	if(Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY) == 0)SecondSelect = NextKey;break;
						case SWAP_KEY_LEFT:
						case SWAP_KEY_UP:		if(Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY) == 0) SecondSelect = (SecondSelect + 6) % 7;
												else SecondSelect = (SecondSelect + 5) % 6;
												break;
						case SWAP_KEY_RIGHT:
						case SWAP_KEY_DOWN:		if(Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY) == 0) SecondSelect = (SecondSelect + 1) % 7;
												else SecondSelect = (SecondSelect + 1) % 6;
												break;
						//메뉴선택
						case SWAP_KEY_OK:
							switch(SecondSelect){
								//이동
								case 0:
									SelectedAnswer = 0;		//이동모드로
									break;
								//공격
								case 1:
									SecondSelect = 0;
									SelectedAnswer = 3;		//공격모드로(마름모영역 표시)
									break;

								//스킬
								case 2:
									SecondSelect = 0;
									SelectedAnswer = 4;		//스킬선택메뉴
									break;

								//도구
								case 3:
									SecondSelect = 0;
									SelectedAnswer = 5;		//스킬선택메뉴
									break;

								//상태
								case 4:
									SelectTarget.X = Player.BatX;
									SelectTarget.Y = Player.BatY;
									SelectedAnswer = 6;		//상태보기
									break;

								//휴식
								case 6:
									Player.HP += Player.MAXHP / 5;
									if(Player.HP > Player.MAXHP) Player.HP = Player.MAXHP;
									Player.SP += Player.MAXSP / 10;
									if(Player.SP > Player.MAXSP) Player.SP = Player.MAXSP;
								//대기
								case 5:
									SelectedAnswer = 0;	//이동모드로
									SecondSelect = 0;	//선택메뉴 초기화
									EventStatus = 1;	//턴 종료
									break;				

							}
							break;	//메뉴 선택

						//메뉴닫기
						case SWAP_KEY_CLR:		
							SecondSelect = 0;	//선택메뉴 초기화
							SelectedAnswer = 0;	//이동 모드로
							break;
					}
					break;
					break;

				//주인공턴-공격모드
				case 3:
					SetColor(S_YELLOW);
					DrawLimitArea(2, Player.BatX, Player.BatY);

					//주변에 적이 없음을 확인
					if(BattleLayer[(Player.BatY+1)%10][Player.BatX] <= 0){
						if(BattleLayer[Player.BatY][(Player.BatX+1)%12] <= 0){
							if(BattleLayer[Abs(Player.BatY-1)][Player.BatX] <= 0){
								if(BattleLayer[Player.BatY][Abs(Player.BatX-1)] <= 0){
									CopyImage(0, 114, interface_oneline);
									SetFontType(S_FONT_LARGE, S_CYAN, S_BLACK, S_ALIGN_LEFT);
									DrawStr(9, 121, "공격범위 안에 적이 없습니다.");
									switch(NextKey){
										case SWAP_KEY_OK:	SelectedAnswer = 2;	//메뉴모드로
									}
									break;
								}
							}
						}
					}									

					SetColor(S_RED);
					switch(SecondSelect){
						case 0:
								switch(Player.BatD){
									case 0:	SecondSelect = 1;break;
									case 1:	SecondSelect = 4;break;
									case 2:	SecondSelect = 2;break;
									case 3:	SecondSelect = 3;break;
								}
								break;
						case 1:
								DrawLimitArea(1, Player.BatX, Player.BatY-1);
								Player.BatD = 0;break;
						case 2:
								DrawLimitArea(1, Player.BatX, Player.BatY+1);
								Player.BatD = 2;break;
						case 3:
								DrawLimitArea(1, Player.BatX-1, Player.BatY);
								Player.BatD = 3;break;
						case 4:
								DrawLimitArea(1, Player.BatX+1, Player.BatY);
								Player.BatD = 1;break;
					}					

					switch(NextKey){
						case SWAP_KEY_UP:		if(Player.BatY-1 >= 0)SecondSelect = 1;break;
						case SWAP_KEY_DOWN:		if(Player.BatY+1 < 10)SecondSelect = 2;break;
						case SWAP_KEY_LEFT:		if(Player.BatX-1 >= 0)SecondSelect = 3;break;
						case SWAP_KEY_RIGHT:	if(Player.BatX+1 < 12)SecondSelect = 4;break;

						//공격
						case SWAP_KEY_OK:		//테스트코드
							switch(SecondSelect){
								case 1:
										TargetEnemy = BattleLayer[Player.BatY-1][Player.BatX];
										break;
								case 2:
										TargetEnemy = BattleLayer[Player.BatY+1][Player.BatX];
										break;
								case 3:
										TargetEnemy = BattleLayer[Player.BatY][Player.BatX-1];
										break;
								case 4:
										TargetEnemy = BattleLayer[Player.BatY][Player.BatX+1];
										break;
							}
							if(TargetEnemy){
								TargetEnemy -= 1;
								EnemyObject[TargetEnemy].BatD = (Player.BatD + 2) % 4;	//주인공을 바라봄
								EnemyObject[TargetEnemy].HP -= 10;
								SecondSelect = 0;
								SelectedAnswer = 0;
								EventStatus = 1;
							}
							break;
						case SWAP_KEY_CLR:
							SecondSelect = 0;
							SelectedAnswer = 2;break;	//메뉴 모드로
					}
					break;

				//주인공턴-스킬사용모드
				case 4:
					CopyImageEx(25, 183, interface_battlefunctionlist, 1, 0, 0, 0);
					CopyImageEx(31 + (162 * (SecondSelect+SelectedScroll) / (SkillSlotSize-1)), 219, interface_scroll2, 1, 0, 0, 0);

					FillRectEx(24, 167, 215, 181, 2);
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					DrawStr(120, 169, SkillList[SkillSlot[SecondSelect+SelectedScroll].ListNumber].Name);

					for(i = 0; i < 8; i++){
						CopyImage(37 + i * 22, 196, icon[SkillList[SkillSlot[i + SelectedScroll].ListNumber].Icon]);
						if(SkillSlot[i + SelectedScroll].ListNumber){
							MakeStr1(Temp, "L_%d", SkillSlot[i + SelectedScroll].Quantity);
							SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//레벨그림자
							DrawStr(i * 22 + 51, 204, Temp);
							DrawStr(i * 22 + 52, 203, Temp);
							SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//레벨표시
							DrawStr(i * 22 + 52, 204, Temp);
						}
					}
					CopyImage(32 + 22 * SecondSelect, 190, interface_selitem);

					switch(NextKey){
						case SWAP_KEY_LEFT:
							
							if(SecondSelect > 0){
								SecondSelect--;
							}else{
								if(SelectedScroll > 0)
									SelectedScroll--;
							}
							break;

						case SWAP_KEY_RIGHT:
							if(SecondSelect < 7){
								SecondSelect++;
							}else{
								if(SecondSelect + SelectedScroll < SkillSlotSize - 1)
									SelectedScroll++;
							}
							break;
						
						case SWAP_KEY_OK:		//////스킬 사용 루틴삽입 요망//////
							if(!SkillSlot[SecondSelect + SelectedScroll].ListNumber) break;
						case SWAP_KEY_CLR:		SelectedScroll = 0;SecondSelect = 0;SelectedAnswer = 0;break;
						default:
							break;
					}
					break;

				//주인공턴-도구사용모드
				case 5:
					CopyImageEx(25, 183, interface_battlefunctionlist, 1, 0, 0, 0);
					CopyImageEx(31 + (162 * (SecondSelect+SelectedScroll) / (InventorySize-1)), 219, interface_scroll2, 1, 0, 0, 0);
					
					FillRectEx(24, 167, 215, 181, 2);
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
					DrawStr(120, 169, ItemList[Inventory[SecondSelect+SelectedScroll].ListNumber].Name);

					for(i = 0; i < 8; i++){
						CopyImage(37 + i * 22, 196, icon[ItemList[Inventory[i+SelectedScroll].ListNumber].Icon]);
						if(Inventory[i+SelectedScroll].ListNumber){
							MakeStr1(Temp, "%d", Inventory[i+SelectedScroll].Quantity);
							SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//수량그림자
							DrawStr(i * 22 + 51, 204, Temp);
							DrawStr(i * 22 + 52, 203, Temp);
							SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//수량표시
							DrawStr(i * 22 + 52, 204, Temp);
						}
					}
					CopyImage(32 + 22 * SecondSelect, 190, interface_selitem);

					switch(NextKey){
						case SWAP_KEY_LEFT:
							
							if(SecondSelect > 0){
								SecondSelect--;
							}else{
								if(SelectedScroll > 0)
									SelectedScroll--;
							}
							break;

						case SWAP_KEY_RIGHT:
							if(SecondSelect < 7){
								SecondSelect++;
							}else{
								if(SecondSelect + SelectedScroll < InventorySize - 1)
									SelectedScroll++;
							}
							break;

						case SWAP_KEY_OK:		//////아이템 사용 루틴삽입 요망//////
							if(!Inventory[SecondSelect + SelectedScroll].ListNumber) break;
						case SWAP_KEY_CLR:		SelectedScroll = 0;SecondSelect = 0;SelectedAnswer = 0;break;
						default:
							break;
					}
					break;
				
				//주인공턴-상태보기모드-1.선택
				case 6:
					CopyImage(24+(SelectTarget.X)*16, 70+(SelectTarget.Y)*16, interface_seltarget);

					switch(NextKey){
						case SWAP_KEY_UP:
							if(SelectTarget.Y > 0)SelectTarget.Y--;
							break;
						case SWAP_KEY_DOWN:
							if(SelectTarget.Y < 9)SelectTarget.Y++;
							break;
						case SWAP_KEY_LEFT:
							if(SelectTarget.X > 0)SelectTarget.X--;
							break;
						case SWAP_KEY_RIGHT:
							if(SelectTarget.X < 11)SelectTarget.X++;
							break;
						case SWAP_KEY_OK:
							SecondSelect = BattleLayer[SelectTarget.Y][SelectTarget.X];
							if(SecondSelect == -1){
								SelectedAnswer = 7;
							}else if(SecondSelect != 0){
								SelectedAnswer = 8;
								SecondSelect--;
							}
							break;
						case SWAP_KEY_CLR:		SecondSelect = 0;SelectedAnswer = 0;break;
						default:
							break;
					}
					break;

				//주인공턴-상태보기모드-2.확인-주인공
				case 7:
					CopyImage(24+(SelectTarget.X)*16, 70+(SelectTarget.Y)*16, interface_seltarget);

					CopyImageEx(25, 142, interface_battleinfo, 1, 0, 0, 0);
					CopyImageEx(191, 132, interface_okinfo, 1, 0, 0, 0);
					
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
					DrawStr(33, 149, Player.Name);
					MakeStr1(Temp, "Lv %d", Player.LV);
					DrawStr(146, 149, Temp);
					MakeStr2(Temp, "HP %d/%d", Player.HP, Player.MAXHP);
					DrawStr(33, 168, Temp);
					MakeStr2(Temp, "SP %d/%d", Player.SP, Player.MAXSP);
					DrawStr(33, 185, Temp);

					//PRINT STAT
					MakeStr1(Temp, "STR %2d", Player.STR);
					DrawStr(105, 168, Temp);
					MakeStr1(Temp, "DEF %2d", Player.DEF);
					DrawStr(105, 185, Temp);
					MakeStr1(Temp, "INT %2d", Player.INT);
					DrawStr(160, 168, Temp);
					MakeStr1(Temp, "DEX %2d", Player.DEX);
					DrawStr(160, 185, Temp);

					DrawStr(37, 206, "EQUIP");

					for(i = 0; i < 6; i++){
						CopyImage(78 + i * 23, 207, icon[EquipList[Player.Equip[i]].Icon]);
						if(Player.Equip[i]){
							MakeStr1(Temp, "U_%d", Player.Upgrade[i]);
							SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//수량그림자
							DrawStr(i * 23 + 91, 215, Temp);
							DrawStr(i * 23 + 92, 214, Temp);
							SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//수량표시
							DrawStr(i * 23 + 92, 215, Temp);
						}
					}

					switch(NextKey){
						case SWAP_KEY_OK:
						case SWAP_KEY_CLR:	SelectedAnswer = 6;break;
						default:			break;
					}
					break;

				//주인공턴-상태보기모드-2.확인-적
				case 8:
					CopyImage(24+(SelectTarget.X)*16, 70+(SelectTarget.Y)*16, interface_seltarget);

					CopyImageEx(25, 142, interface_battleinfo, 1, 0, 0, 0);
					CopyImageEx(191, 132, interface_okinfo, 1, 0, 0, 0);
					
					SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
					DrawStr(33, 149, NameList[EnemyObject[SecondSelect].NameNumber]);
					MakeStr1(Temp, "Lv %d", EnemyObject[SecondSelect].LV);
					DrawStr(146, 149, Temp);
					MakeStr2(Temp, "HP %d/%d", EnemyObject[SecondSelect].HP, EnemyObject[SecondSelect].MAXHP);
					DrawStr(33, 168, Temp);
					MakeStr2(Temp, "SP %d/%d", EnemyObject[SecondSelect].SP, EnemyObject[SecondSelect].MAXSP);
					DrawStr(33, 185, Temp);

					//PRINT STAT
					MakeStr1(Temp, "STR %2d", EnemyObject[SecondSelect].STR);
					DrawStr(105, 168, Temp);
					MakeStr1(Temp, "DEF %2d", EnemyObject[SecondSelect].DEF);
					DrawStr(105, 185, Temp);
					MakeStr1(Temp, "INT %2d", EnemyObject[SecondSelect].INT);
					DrawStr(160, 168, Temp);
					MakeStr1(Temp, "DEX %2d", EnemyObject[SecondSelect].DEX);
					DrawStr(160, 185, Temp);

					DrawStr(37, 206, "EQUIP");

					for(i = 0; i < 6; i++){
						CopyImage(78 + i * 23, 207, icon[54]);							//54번 아이콘 물음표
						if(Player.Equip[i]){
							SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_RIGHT);	//수량그림자
							DrawStr(i * 23 + 91, 215, "U_?");
							DrawStr(i * 23 + 92, 214, "U_?");
							SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);	//수량표시
							DrawStr(i * 23 + 92, 215, "U_?");
						}
					}

					switch(NextKey){
						case SWAP_KEY_OK:
						case SWAP_KEY_CLR:	SelectedAnswer = 6;break;
						default:			break;
					}
					break;
				
				case 9:
					break;
				
			}
			break;

		//적 턴
		case 3:

			SetColor(S_RED);
			DrawLimitArea(EnemyObject[GrpNum].MOV + 1, EnemyObject[GrpNum].BatX-BattleLimitMoveX, EnemyObject[GrpNum].BatY-BattleLimitMoveY);



			if(EnemyObject[GrpNum].ScrollMapX){
				if(EnemyObject[GrpNum].ScrollMapX>0)EnemyObject[GrpNum].ScrollMapX-=3;
				else EnemyObject[GrpNum].ScrollMapX+=3;
			}else if(EnemyObject[GrpNum].ScrollMapY){
				if(EnemyObject[GrpNum].ScrollMapY>0)EnemyObject[GrpNum].ScrollMapY-=3;
				else EnemyObject[GrpNum].ScrollMapY+=3;
			}else{
				if(Abs(BattleLimitMoveX)+Abs(BattleLimitMoveY) == EnemyObject[GrpNum].MOV){
					EventStatus = 1;
				}else{
					if(Abs(EnemyObject[GrpNum].BatX - Player.BatX) > Abs(EnemyObject[GrpNum].BatY - Player.BatY)){
						if(EnemyObject[GrpNum].BatX < Player.BatX){
							MoveEnemy(1, GrpNum);
						}else if(EnemyObject[GrpNum].BatX > Player.BatX){
							MoveEnemy(3, GrpNum);
						}
					
					}else{
						if(EnemyObject[GrpNum].BatY < Player.BatY){
							MoveEnemy(2, GrpNum);
						}else if(EnemyObject[GrpNum].BatY > Player.BatY){
							MoveEnemy(0, GrpNum);
						}
					}
				}
			}

			switch(NextKey){
				case SWAP_KEY_OK:		EventStatus = 1;break;	//테스트 적의 턴 종료
			}
			//AI동작
		break;

	}

	//턴 표시
	CopyImage(104, 53, interface_turn[EventStatus - 1]);

	return 0;		//전투중
	//return 1;		//승리
	//return 2;		//도주
	//return 3;		//패배
}

void MoveBattleMap(int Direction){
	int TempX;
	int TempY;

	TempX = Area[Player.map].x_start + Player.BatX + Player.x-BattlePosX;
	TempY = Area[Player.map].y_start + Player.BatY + Player.y-BattlePosY;

	BattleLayer[Player.BatY][Player.BatX] = 0;
	switch (Direction){
		case SWAP_KEY_UP:
			if(Player.BatY > 0 && Player.y - (BattlePosY - Player.BatY) > 0){
				if(SupLayer[TempY - 1][TempX] <= _SupChipMoveable || SupLayer[TempY - 1][TempX] > _SupChipWall){
					if((Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY - 1)) <= Player.MOV){
						if(BattleLayer[Player.BatY-1][Player.BatX] == 0){
							Player.BatY--;
							BattleLimitMoveY--;
							ScrollMapY=15;
						}
					}
				}
			}
			Player.BatD = 0;
			break;
		case SWAP_KEY_DOWN:
			if(Player.BatY < 9){
				if(SupLayer[TempY + 1][TempX] <= _SupChipMoveable || SupLayer[TempY + 1][TempX] > _SupChipWall){
					if((Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY + 1)) <= Player.MOV){
						if(BattleLayer[Player.BatY+1][Player.BatX] == 0){
							Player.BatY++;
							BattleLimitMoveY++;
							ScrollMapY = -15;
						}
					}
				}
			}
			Player.BatD = 2;
			break;
		case SWAP_KEY_LEFT:
			if(Player.BatX > 0 && Player.x - (BattlePosX - Player.BatX) > 0){
				if(SupLayer[TempY][TempX - 1] <= _SupChipMoveable || SupLayer[TempY][TempX - 1] > _SupChipWall){
					if((Abs(BattleLimitMoveX - 1) + Abs(BattleLimitMoveY)) <= Player.MOV){
						if(BattleLayer[Player.BatY][Player.BatX-1] == 0){
							Player.BatX--;
							BattleLimitMoveX--;
							ScrollMapX = 15;
						}
					}
				}
			}
			Player.BatD = 3;
			break;
		case SWAP_KEY_RIGHT:
			if(Player.BatX < 11){
				if(SupLayer[TempY][TempX + 1] <= _SupChipMoveable || SupLayer[TempY][TempX + 1] > _SupChipWall){
					if((Abs(BattleLimitMoveX + 1) + Abs(BattleLimitMoveY)) <= Player.MOV){
						if(BattleLayer[Player.BatY][Player.BatX+1] == 0){
							Player.BatX++;
							BattleLimitMoveX++;
							ScrollMapX = -15;
						}
					}
				}
			}
			Player.BatD = 1;
	}
	BattleLayer[Player.BatY][Player.BatX] = -1;

}

void MoveEnemy(int Direction, int EnemyNum){
	int TempX;
	int TempY;
	int FLAG = 1;

	TempX = Area[Player.map].x_start + EnemyObject[EnemyNum].BatX + Player.x-BattlePosX;
	TempY = Area[Player.map].y_start + EnemyObject[EnemyNum].BatY + Player.y-BattlePosY;

	BattleLayer[EnemyObject[EnemyNum].BatY][EnemyObject[EnemyNum].BatX] = 0;

	while(FLAG++%10){
		switch (Direction){
			case 0://상
				if(	EnemyObject[EnemyNum].BatY > 0 && Player.y - (BattlePosY - EnemyObject[EnemyNum].BatY) > 0 &&
					BattleLayer[EnemyObject[EnemyNum].BatY-1][EnemyObject[EnemyNum].BatX] == 0){
					if(		SupLayer[TempY - 1][TempX] <= _SupChipMoveable || SupLayer[TempY - 1][TempX] > _SupChipWall &&
							Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY - 1) <= EnemyObject[EnemyNum].MOV){
								EnemyObject[EnemyNum].BatY--;
								BattleLimitMoveY--;
								EnemyObject[EnemyNum].ScrollMapY=15;
								FLAG = 0;
					}else Direction = 1;
				}
				break;
			case 2://하
				if(	EnemyObject[EnemyNum].BatY < 9 &&
					BattleLayer[EnemyObject[EnemyNum].BatY+1][EnemyObject[EnemyNum].BatX] == 0){
					if(		SupLayer[TempY + 1][TempX] <= _SupChipMoveable || SupLayer[TempY + 1][TempX] > _SupChipWall &&
							Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY + 1) <= EnemyObject[EnemyNum].MOV){
								EnemyObject[EnemyNum].BatY++;
								BattleLimitMoveY++;
								EnemyObject[EnemyNum].ScrollMapY = -15;
								FLAG = 0;
					}else Direction = 3;
				}
				break;
			case 3://좌
				if(	EnemyObject[EnemyNum].BatX > 0 && Player.x - (BattlePosX - EnemyObject[EnemyNum].BatX) > 0 &&
					BattleLayer[EnemyObject[EnemyNum].BatY][EnemyObject[EnemyNum].BatX-1] == 0){
					if(		SupLayer[TempY][TempX - 1] <= _SupChipMoveable || SupLayer[TempY][TempX - 1] > _SupChipWall &&
							Abs(BattleLimitMoveX - 1) + Abs(BattleLimitMoveY) <= EnemyObject[EnemyNum].MOV){
								EnemyObject[EnemyNum].BatX--;
								BattleLimitMoveX--;
								EnemyObject[EnemyNum].ScrollMapX = 15;
								FLAG = 0;
					}else Direction = 0;
				}
				break;
			case 1://우
				if(	EnemyObject[EnemyNum].BatX < 11 &&
					BattleLayer[EnemyObject[EnemyNum].BatY][EnemyObject[EnemyNum].BatX+1] == 0){
					if(		SupLayer[TempY][TempX + 1] <= _SupChipMoveable || SupLayer[TempY][TempX + 1] > _SupChipWall &&
							Abs(BattleLimitMoveX + 1) + Abs(BattleLimitMoveY) <= EnemyObject[EnemyNum].MOV){
								EnemyObject[EnemyNum].BatX++;
								BattleLimitMoveX++;
								EnemyObject[EnemyNum].ScrollMapX = -15;
								FLAG = 0;
					}else Direction = 2;
				}
				break;
		}
	}

	EnemyObject[EnemyNum].BatD = Direction;
	BattleLayer[EnemyObject[EnemyNum].BatY][EnemyObject[EnemyNum].BatX] = EnemyNum + 1;

}

//지역 표시 마름모꼴
void DrawLimitArea(int Size, int AreaX, int AreaY){
	int i, j;

	for(i = 0; i < Size; i++)
		for(j = -i + 1; j < i; j++)
			if(AreaX+j >= 0 && AreaY+i-Size >= 0)
				if(AreaX+j < 12 && AreaY+i-Size < 10)
					FillRectEx(24+(AreaX+j)*16, 70+(AreaY+i-Size)*16, 39+(AreaX+j)*16, 85+(AreaY+i-Size)*16, 3);

	for(i = Size; i >= 0; i--)
		for(j = -i + 1; j < i; j++)
			if(AreaX+j >= 0 && AreaY+Size-i >= 0)
				if(AreaX+j < 12 && AreaY+Size-i < 10)
					FillRectEx(24+(AreaX+j)*16, 70+(AreaY+Size-i)*16, 39+(AreaX+j)*16, 85+(AreaY+Size-i)*16, 3);

}
