
//15번 이벤트 라인{15,*,*} - 전투처리(적그룹번호, 맵종류)
int Battle(int EventNumber, int GrpNum, int BatMap){
	string Temp;
	int i, j;
	int TargetEnemy;
return	1;
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
}
/*
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
				}
			//}
			EnemyObject[GrpNum].BatD = EventObject[EventNumber].direction;
			EnemyObject[GrpNum].HP = EnemyObject[GrpNum].MAXHP;
			EnemyObject[GrpNum].SP = EnemyObject[GrpNum].MAXSP;
			EventStatus = 1;

*/