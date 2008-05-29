int SelectedAnswer = 0;

void RunEventLine(int EventNumber)
{
	/*
	if(EventObject[EventNumber].Switch > 0)	//0보다 크면 비교할 의사가 있는 것임_스위치 On 여부
		if(Switch[EventObject[EventNumber].Switch - 1] == 0)return;

	if(EventObject[EventNumber].Variable > 0)	//0보다 크면 비교할 의사가 있는 것임_변수 비교
		if(CheckVariable(Variable[EventObject[EventNumber].Variable - 1], EventObject[EventNumber].Operation, EventObject[EventNumber].VariableValue) == 0)return;
	*/
	if(EventNumber < 0) return;
	if(EventObject[EventNumber].EventLoop == 0) return;

	switch(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++])
	{
		case 0:		//문장 출력						 :: 매개변수 1개
			if(NextKey == SWAP_KEY_OK)
			{
				PrintMessage(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
				NextKey = -1;
			}
			else
			{
				PrintMessage(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount--]);
				NextKey = -1;
			}

			break;
		case 1:		//문장 조합_변수 및 개체 이름	 :: 매개변수 4개
			MakeMessage(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 2:		//스위치 조작					 :: 매개변수 2개
			SwitchOnOff(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 3:		//변수 조작						 :: 매개변수 3개
			SetVariable(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 4:		//변수 대입_주인공 스테이터스	 :: 매개변수 2개
			StatusToVariable(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 5:		//주인공 스테이터스 조작		 :: 매개변수 3개
			SetPlayerStatus(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 6:		//주인공 아이템 및 스킬 등 습득	 :: 매개변수 3개
			GetItem(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 7:		//주인공 맵 이동_지역 워프		 :: 매개변수 3개
			MoveMap(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 8:		//개체 위치 이동_좌표만			 :: 매개변수 2개
			MovePosition(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 9:		//개체 방향 전환				 :: 매개변수 2개
			SetDirection(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 10:	//선택지						 :: 매개변수 3개
			if(NextKey == SWAP_KEY_OK)
			{
				PrintQuestion(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
				NextKey = -1;
			}
			else
			{
				PrintQuestion(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+2]);
				EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount --;
				NextKey = -1;
			}
			
			break;
		case 11:	//조건분기_변수					 :: 매개변수 4개
			EventObject[EventNumber].LineCount += 4 + ConditionVariable(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+2], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+3]);
			break;
		case 12:	//조건분기_스위치				 :: 매개변수 2개
			EventObject[EventNumber].LineCount += 2 + ConditionSwitch(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1]);
			break;
		case 13:	//딜레이						 :: 매개변수 1개
			if(Delay(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount]) == 0)EventObject[EventNumber].LineCount--;
			else EventObject[EventNumber].LineCount++;
			break;

		/*case 14:
		KeyState(EventLine[EventObject[EventNumber].EventPage][EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage][EventObject[EventNumber].LineCount++]);
		break;//*/

		default:
			EventObject[EventNumber].LineCount = 0;
			EventObject[EventNumber].EventLoop = 0;
			RunningEventNumber = -1;
	}
}

//조건부 변수 비교
int CheckVariable(int Value1, int Operation, int Value2)
{
	switch(Operation)
	{
		case 0:	// Data == Value
			if(Variable[Value1] < Variable[Value2])return 1;
			break;
		case 1:	// Data > Value
			if(Variable[Value1] <= Variable[Value2])return 1;
			break;
		case 2:	// Data >= Value
			if(Variable[Value1] == Variable[Value2])return 1;
			break;
		case 3:	// Data < Value
			if(Variable[Value1] >= Variable[Value2])return 1;
			break;
		case 4:	// Data <= Value
			if(Variable[Value1] > Variable[Value2])return 1;
			break;
	}
	return 0;
}



//0번 이벤트 라인{0,*} - 문장출력
void PrintMessage(int MessageNumber)
{
	string TempString;
	int Length;
	int i;
	//반각문자는 18자 전각문자는 9자가 한 줄(반각문자 108자 전각문자 54자까지만 권장, 즉 6줄)
	Length = StrLen(Message[MessageNumber]) / 26;
	//대화창 배경
	SetColorRGB(0, 30, 100);
	FillRectEx(4, 4, 171, 25 + Length * 15, 2);
	SetColorRGB(0, 20, 70);
	DrawRect(3, 3, 172, 25 + Length * 15);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	for(i = 0; i < Length + 1; i++){
		StrSub(TempString, Message[MessageNumber], i * 26, 26);
		DrawStr(9, 9 + i * 15, TempString);
	}
}

//1번 이벤트 라인{1,*,*,*,*} - 변수 및 단어로 문장 조합
void MakeMessage(int FrontMessage, int NextMessage, int ValueType, int Value)
{
	string TempString;

	StrCpy(Message[0], Message[FrontMessage]);

	switch(ValueType)
	{
		case 0:
			MakeStr1(TempString, " %d ", Variable[Value]);
			StrCat(Message[0], TempString);
			break;
		case 1:
			StrCat(Message[0], Message[Value]);
	}
	StrCat(Message[0], Message[NextMessage]);
}

//2번 이벤트 라인{2,*,*} - 스위치조작
void SwitchOnOff(int SwitchNumber, int OnOffSet)
{
	Switch[SwitchNumber] = OnOffSet;
}

//3번 이벤트 라인{3,*,*,*} - 변수조작
void SetVariable(int VariableNumber, int Operation, int Value)
{
	int Temp;
	switch(Operation)
	{
		case 0:		// = Value
			Variable[VariableNumber] = Value;break;
		case 1:		// VariableNumber + Value
			Variable[VariableNumber] += Value;break;
		case 2:		// VariableNumber - Value
			Variable[VariableNumber] -= Value;break;
		case 3:		// VariableNumber * Value
			Variable[VariableNumber] *= Value;break;
		case 4:		// VariableNumber / Value
			Variable[VariableNumber] /= Value;break;
		case 5:		// VariableNumber % Value
			Variable[VariableNumber] %= Value;break;
		case 6:		// = VariableNumber
			Variable[VariableNumber] = Variable[Value];break;
		case 7:		// VariableNumber + VariableNumber
			Variable[VariableNumber] += Variable[Value];break;
		case 8:		// VariableNumber - VariableNumber
			Variable[VariableNumber] -= Variable[Value];break;
		case 9:		// VariableNumber * VariableNumber
			Variable[VariableNumber] *= Variable[Value];break;
		case 10:	// VariableNumber / VariableNumber
			Variable[VariableNumber] /= Variable[Value];break;
		case 11:	// VariableNumber % VariableNumber
			Variable[VariableNumber] %= Variable[Value];break;
		case 12:	// Swap(VariableNumber)
			Temp = Variable[VariableNumber];
			Variable[VariableNumber] = Variable[Value];
			Variable[Value] = Temp;
	}
}

//4번 이벤트 라인{4,*,*} - 변수 설정:주인공 스테이터스
void StatusToVariable(int Status, int Value)
{
	switch(Status)
	{
		case 0://Variable[Value] = LV
			Variable[Value] = Player.LV;break;
		case 1://Variable[Value] = EXP
			Variable[Value] = Player.EXP;break;
		case 2://Variable[Value] = MAX HP
			Variable[Value] = Player.MAXHP;break;
		case 3://Variable[Value] = HP
			Variable[Value] = Player.HP;break;
		case 4://Variable[Value] = MAX MP
			Variable[Value] = Player.MAXMP;break;
		case 5://Variable[Value] = MP
			Variable[Value] = Player.MP;break;
		case 6://Variable[Value] = STR
			Variable[Value] = Player.STR;break;
		case 7://Variable[Value] = DEF
			Variable[Value] = Player.DEF;break;
		case 8://Variable[Value] = WIS
			Variable[Value] = Player.WIS;break;
		case 9://Variable[Value] = DEX
			Variable[Value] = Player.DEX;break;
		case 10://Variable[Value] = GOLD
			Variable[Value] = Player.GOLD;
	}
}



//5번 이벤트 라인{5,*,*,*} - 주인공 스테이터스 조작
void SetPlayerStatus(int Status, int Operation, int Value)
{
	switch(Operation)
	{
		case 0:	// += Variable[Value]
			switch(Status){
				case 0://LV
					Player.LV += Variable[Value];break;
				case 1://EXP
					Player.EXP += Variable[Value];break;
				case 2://MAX HP
					Player.MAXHP += Variable[Value];break;
				case 3://HP
					Player.HP += Variable[Value];break;
				case 4://MAX MP
					Player.MAXMP += Variable[Value];break;
				case 5://MP
					Player.MP += Variable[Value];break;
				case 6://STR
					Player.STR += Variable[Value];break;
				case 7://DEF
					Player.DEF += Variable[Value];break;
				case 8://WIS
					Player.WIS += Variable[Value];break;
				case 9://DEX
					Player.DEX += Variable[Value];break;
				case 10://GOLD
					Player.GOLD += Variable[Value];
			}
			break;
		case 1:	// -= Variable[Value]
			switch(Status){
				case 0://LV
					Player.LV -= Variable[Value];break;
				case 1://EXP
					Player.EXP -= Variable[Value];break;
				case 2://MAX HP
					Player.MAXHP -= Variable[Value];break;
				case 3://HP
					Player.HP -= Variable[Value];break;
				case 4://MAX MP
					Player.MAXMP -= Variable[Value];break;
				case 5://MP
					Player.MP -= Variable[Value];break;
				case 6://STR
					Player.STR -= Variable[Value];break;
				case 7://DEF
					Player.DEF -= Variable[Value];break;
				case 8://WIS
					Player.WIS -= Variable[Value];break;
				case 9://DEX
					Player.DEX -= Variable[Value];break;
				case 10://GOLD
					Player.GOLD -= Variable[Value];
			}
			break;
		case 2: // = Variable[Value]
			switch(Status){
				case 0://LV
					Player.LV = Variable[Value];break;
				case 1://EXP
					Player.EXP = Variable[Value];break;
				case 2://MAX HP
					Player.MAXHP = Variable[Value];break;
				case 3://HP
					Player.HP = Variable[Value];break;
				case 4://MAX MP
					Player.MAXMP = Variable[Value];break;
				case 5://MP
					Player.MP = Variable[Value];break;
				case 6://STR
					Player.STR = Variable[Value];break;
				case 7://DEF
					Player.DEF = Variable[Value];break;
				case 8://WIS
					Player.WIS = Variable[Value];break;
				case 9://DEX
					Player.DEX = Variable[Value];break;
				case 10://GOLD
					Player.GOLD = Variable[Value];
			}
	}
}

//6번 이벤트 라인{6,*} - 주인공 아이템 및 스킬 습득
void GetItem(int Category, int ItemNumber, int Quantity)
{
Player.GOLD++;
//////////////////////////////////////////////////////////////////////////////////// 보완
}

//7번 이벤트 라인{7,*,*,*} - 주인공 맵 이동
void MoveMap(int MapNumber, int PositionX, int PositionY)
{
	EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x] = 0;
	Player.map = MapNumber;
	Player.x = PositionX;
	Player.y = PositionY;
	EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x] = -1;
}

//8번 이벤트 라인{8,*,*} - 케릭터 한칸 이동
void MovePosition(int Actor, int Direction)
{
	int TempX;
	int TempY;

	TempX = Area[Player.map].x_start + Player.x;
	TempY = Area[Player.map].y_start + Player.y;

	if(!ScrollMapX && !ScrollMapY && Actor == 0)	//Actor는 이동 주체, 0은 주인공, 1번부터 이벤트
	{
		switch (Direction){
			case SWAP_KEY_UP:
				if(Player.y > 0)
					if(SupLayer[TempY - 1][TempX] <= _SupChipMoveable || SupLayer[TempY - 1][TempX] > _SupChipWall)
						if(EventLayer[TempY - 1][TempX] == 0)
						{EventLayer[TempY][TempX] = 0;ScrollMapY=-15;EventLayer[TempY-1][TempX] = -1;Player.y--;}
				//Player.direction = 0;
				break;
			case SWAP_KEY_DOWN:
				if(Player.y < Area[Player.map].y_size - 1)
					if(SupLayer[TempY + 1][TempX] <= _SupChipMoveable || SupLayer[TempY + 1][TempX] > _SupChipWall)
						if(EventLayer[TempY + 1][TempX] == 0)
							{EventLayer[TempY][TempX] = 0;ScrollMapY=15;EventLayer[TempY+1][TempX] = -1;Player.y++;}
				//Player.direction = 2;
				break;
			case SWAP_KEY_LEFT:
				if(Player.x > 0)
					if(SupLayer[TempY][TempX - 1] <= _SupChipMoveable || SupLayer[TempY][TempX - 1] > _SupChipWall)
						if(EventLayer[TempY][TempX - 1] == 0)
							{EventLayer[TempY][TempX] = 0;ScrollMapX=-15;EventLayer[TempY][TempX-1] = -1;Player.x--;}
				//Player.direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				if(Player.x < Area[Player.map].x_size - 1)
					if(SupLayer[TempY][TempX + 1] <= _SupChipMoveable || SupLayer[TempY][TempX + 1] > _SupChipWall)
						if(EventLayer[TempY][TempX + 1] == 0)
							{EventLayer[TempY][TempX] = 0;ScrollMapX=15;EventLayer[TempY][TempX+1] = -1;Player.x++;}
				//Player.direction = 1;
		}
		//EventLayer[TempY][TempX] = -1;
	}
	else if(Actor > 0)
	{
		EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] = 0;
		switch (Direction){
			case SWAP_KEY_UP:
				if(EventObject[Actor - 1].y > 0)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start - 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start - 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start - 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] == 0)
							{EventObject[Actor - 1].y--;EventObject[Actor - 1].ScrollMapX=0;EventObject[Actor - 1].ScrollMapY=-15;}
				//EventObject[Actor - 1].direction = 0;
				break;
			case SWAP_KEY_DOWN:
				if(EventObject[Actor - 1].y < Area[EventObject[Actor - 1].map].y_size - 1)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start + 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start + 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start + 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] == 0)
							{EventObject[Actor - 1].y++;EventObject[Actor - 1].ScrollMapX=0;EventObject[Actor - 1].ScrollMapY=15;}
				//EventObject[Actor - 1].direction = 2;
				break;
			case SWAP_KEY_LEFT:
				if(EventObject[Actor - 1].x > 0)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start - 1] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start - 1] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start - 1] == 0)						
							{EventObject[Actor - 1].x--;EventObject[Actor - 1].ScrollMapX=-15;EventObject[Actor - 1].ScrollMapY=0;}
				//EventObject[Actor - 1].direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				if(EventObject[Actor - 1].x < Area[EventObject[Actor - 1].map].x_size - 1)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start + 1] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start + 1] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start + 1] == 0)
							{EventObject[Actor - 1].x++;EventObject[Actor - 1].ScrollMapX=15;EventObject[Actor - 1].ScrollMapY=0;}
				//EventObject[Actor - 1].direction = 1;
		}
		EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] = Actor;
	}
}

//9번 이벤트 라인{9,*,*} - 주인공 방향 전환
void SetDirection(int Actor, int Direction)
{
	if(!ScrollMapX && !ScrollMapY && Actor == 0)
	{
		switch (Direction){
			case SWAP_KEY_UP:
				Player.direction = 0;
				break;
			case SWAP_KEY_DOWN:
				Player.direction = 2;
				break;
			case SWAP_KEY_LEFT:
				Player.direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				Player.direction = 1;
		}
	}
	else
	{
		switch (Direction){
			case SWAP_KEY_UP:
				EventObject[Actor - 1].direction = 0;
				break;
			case SWAP_KEY_DOWN:
				EventObject[Actor - 1].direction = 2;
				break;
			case SWAP_KEY_LEFT:
				EventObject[Actor - 1].direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				EventObject[Actor - 1].direction = 1;
				break;
	}
}
}

//10번 이벤트 라인{10,*,*,*} - 선택지
void PrintQuestion(int Value, int String1, int String2)
{
	SetColorRGB(0, 30, 100);
	FillRectEx(4, 4, 171, 25 + 1 * 15, 2);
	SetColorRGB(0, 20, 70);
	DrawRect(3, 3, 172, 25 + 1 * 15);
	
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	DrawStr(88, 9 + 0 * 15, String1);
	DrawStr(88, 9 + 1 * 15, String2);

	if(NextKey == SWAP_KEY_UP || NextKey == SWAP_KEY_DOWN)
	{
		SelectedAnswer = (SelectedAnswer + 1) % 2;
	}
	else if(NextKey == SWAP_KEY_OK)
	{
		Variable[Value] = SelectedAnswer;
		SelectedAnswer = 0;
		return;
	}
	SetColorRGB(255, 255, 255);
	DrawRect(5, 7 + SelectedAnswer * 15, 170, 21 + SelectedAnswer * 15);
	
//////////////////////////////////////////////////////////////////////////////////// 보완 요망
}

//11번 이벤트 라인{11,*,*,*,*} - 변수에 대한 조건분기
int ConditionVariable(int Value1, int Operation, int Value2, int ElseCount)
{
	if(CheckVariable(Value1, Operation, Value2) == 0)return ElseCount;
	else if(CheckVariable(Value1, Operation, Value2) == 1) return 0;
}

//12번 이벤트 라인{12,*} - 스위치에 대한 조건분기
int ConditionSwitch(int Value, int ElseCount)
{
	if(Switch[Value] == 0)return ElseCount;
	else if(Switch[Value] == 1) return 0;
}

//13번 이벤트 라인{13,*} - 딜레이
int Delay(int Value)
{
	if(Variable[Value] == 0)return 1;
	Variable[Value]--;
	return 0;
}



/*/14번 이벤트 라인{14,*,*} - 키입력 변수
void KeyState(int KeyValue, int Value)
{
	if(MovingDirection == SWAP_KEY_LEFT) Switch[Value] = 1;
	else Switch[Value] = 0;
}//*/