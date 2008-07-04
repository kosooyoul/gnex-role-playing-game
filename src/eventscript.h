int SelectedAnswer = 0;		//첫번째 선택
int SelectedQuantity = 1;	//선택 수량
int ShopStatus = 0;			//상점 상태
int SecondSelect = 0;		//두번째 선택
int EmptySlot;				//아이템 추가를 완료 하였는지

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
			EmptySlot = GetItem(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
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
				EventObject[EventNumber].LineCount--;
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
		case 14:	//상점처리
			if(!Shopping(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+2]))
			{
				EventObject[EventNumber].LineCount = EventObject[EventNumber].LineCount + 3;
				NextKey = -1;
			}
			else
			{
				EventObject[EventNumber].LineCount--;
				NextKey = -1;
			}
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
	FillRectEx(4+_LeftMSG, 4+_TopMSG, 171+_LeftMSG, 25 + Length * 15+_TopMSG, 2);
	SetColorRGB(0, 20, 70);
	DrawRect(3+_LeftMSG, 3+_TopMSG, 172+_LeftMSG, 25 + Length * 15+_TopMSG);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	for(i = 0; i < Length + 1; i++){
		StrSub(TempString, Message[MessageNumber], i * 26, 26);
		DrawStr(9+_LeftMSG, 9 + i * 15+_TopMSG, TempString);
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
			Variable[Value] = Player.Gold;
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
					Player.Gold += Variable[Value];
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
					Player.Gold -= Variable[Value];
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
					Player.Gold = Variable[Value];
			}
	}
}

//6번 이벤트 라인{6,*} - 주인공 아이템 및 스킬 습득
int GetItem(int Category, int ItemNumber, int Quantity)
{
	int i;
	for(i = 0; i < InventorySize; i++)
	{
		if(Inventory[i].ListNumber == ItemNumber && Inventory[i].Quantity < 20)	//이미 소지, 소지한도 여유인 경우
		{
			Inventory[i].Quantity = Inventory[i].Quantity + Quantity;
			return 1;
		}
		else if(Inventory[i].ListNumber == 0)	//소지하지 않은 경우
		{
			Inventory[i].ListNumber = ItemNumber;
			Inventory[i].Quantity = Quantity;
			return 1;	//추가 완료
		}
	}
	return 0;	//빈 슬롯이 없음
	//Player.Gold++;
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
	FillRectEx(4, 4 + _TopSize, 171, 25 + 1 * 15 + _TopSize, 2);
	SetColorRGB(0, 20, 70);
	DrawRect(3, 3 + _TopSize, 172, 25 + 1 * 15 + _TopSize);
	
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	DrawStr(88, 9 + 0 * 15 + _TopSize, String1);
	DrawStr(88, 9 + 1 * 15 + _TopSize, String2);

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
	DrawRect(5, 7 + SelectedAnswer * 15 + _TopSize, 170, 21 + SelectedAnswer * 15 + _TopSize);
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

//14번 이벤트 라인{14,*,*,*} - 상점처리(시세비율, 판매리스트처음, 판매리스트끝),카테고리별 구분 요망
int Shopping(int Sise, int SellListFront, int SellListRear){
	int i;
	string Temp;
	int ListLength;

	ListLength = SellListRear - SellListFront;	//리스트 출력길이 구함
	if(ListLength > 10) ListLength = 10;		//10개가 넘으면 10개.
	SetColorRGB(0, 30, 100);					//이 길이의 상점 배경 출력
	FillRectEx(4, 4 + _TopSize, 171, 25 + (ListLength) * 15 + _TopSize, 2);
	SetColorRGB(0, 20, 70);
	DrawRect(3, 3 + _TopSize, 172, 25 + (ListLength) * 15 + _TopSize);

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);	//아이템 이름과 아이콘 출력
	for(i = 0; i <= ListLength; i++){
		CopyImage(10, 10 + i * 15 + _TopSize, icon[ItemList[SellItemList[SellListFront + i]].Icon]);
		DrawStr(26, 9 + i * 15 + _TopSize, ItemList[SellItemList[SellListFront + i]].Name);
	}

	SetFontType(S_FONT_LARGE, S_GREEN, S_BLACK, S_ALIGN_LEFT);	//아이템 가격 출력
	for(i = 0; i <= ListLength; i++){
		MakeStr1(Temp, "%5d AL", ItemList[SellItemList[SellListFront + i]].Cost * (10 + Sise) / 10);
		DrawStr(100, 9 + i * 15 + _TopSize, Temp);
	}

	if(ShopStatus)		//상점모드에 따라 아이템선택표시상자 테두리 색상
		SetColor(S_RED);
	else
		SetColor(S_WHITE);

	DrawRect(5, 7 + SelectedAnswer * 15 + _TopSize, 170, 21 + SelectedAnswer * 15 + _TopSize);	//아이템 선택 위치표시
	MakeStr1(Temp, "x%2d", SelectedQuantity);
	SetFontType(S_FONT_LARGE, S_YELLOW, S_BLACK, S_ALIGN_LEFT);				//아이템 선택 수량 출력
	DrawStr(150, 9 + SelectedAnswer * 15 + _TopSize, Temp);

	switch(ShopStatus){
		case 0:		//아이템 목록 선택
			if(NextKey == SWAP_KEY_UP){
				SelectedAnswer = (SelectedAnswer + ListLength) % (ListLength + 1);
				SelectedQuantity = 1;
			}
			else if(NextKey == SWAP_KEY_DOWN){
				SelectedAnswer = (SelectedAnswer + 1) % (ListLength + 1);
				SelectedQuantity = 1;
			}
			else if(NextKey == SWAP_KEY_LEFT){
				if(SelectedQuantity > 1)
					SelectedQuantity--;
				else
					SelectedQuantity = 20;
			}
			else if(NextKey == SWAP_KEY_RIGHT){
				if(SelectedQuantity < 20)
					SelectedQuantity++;
				else
					SelectedQuantity = 1;
			}
			else if(NextKey == SWAP_KEY_OK){		
				ShopStatus = 1;	//아이템 선택 -> 다음 명령에서 돈이 맞는지 확인해야함
			}
			else if(NextKey == SWAP_KEY_CLR){
				SelectedAnswer = 0;		//선택 번호 초기화
				SelectedQuantity = 1;	//선택 수량
				ShopStatus = 0;			//상점 상태
				SecondSelect = 0;		//두번째 선택

				return 0;				//상점 종료
			}
			break;

		case 1:		//돈 확인 부분
			SetColorRGB(0, 30, 100);
			FillRectEx(4, 44 + _TopSize, 171, 70 + _TopSize, 1);
			SetColorRGB(0, 20, 70);
			DrawRect(3, 43 + _TopSize, 172, 71 + _TopSize);

			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			if(Player.Gold < ItemList[SellItemList[SellListFront + SelectedAnswer]].Cost * (10 + Sise) / 10 * SelectedQuantity){
				DrawStr(88, 52 + _TopSize, "돈이 부족합니다.");
				if(NextKey == SWAP_KEY_OK || NextKey == SWAP_KEY_CLR) ShopStatus = 0;		//아이템 선택으로 넘어감
			}
			else{
				ShopStatus = 2;		//구입 결정 명령으로 넘어갈차례
			}
			break;

		case 2:		//구입 확인 부분
			SetColorRGB(0, 30, 100);
			FillRectEx(4, 44 + _TopSize, 171, 70 + _TopSize, 1);
			SetColorRGB(0, 20, 70);
			DrawRect(3, 43 + _TopSize, 172, 71 + _TopSize);

			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			MakeStr1(Temp, "%d AL입니다. 구입합니까?", ItemList[SellItemList[SellListFront + SelectedAnswer]].Cost * (10 + Sise) / 10 * SelectedQuantity);
			DrawStr(88, 52 + _TopSize, Temp);

			SetColorRGB(0, 30, 100);
			FillRectEx(4, 74 + _TopSize, 171, 107 + _TopSize, 1);
			SetColorRGB(0, 20, 70);
			DrawRect(3, 73 + _TopSize, 172, 108 + _TopSize);
			DrawStr(88, 78 + _TopSize, "네");	//110-74 = 36 /2 = 18 -14 = 4/2 =2
			DrawStr(88, 93 + _TopSize, "아니오");
			
			if(NextKey == SWAP_KEY_UP || NextKey == SWAP_KEY_DOWN){
				SecondSelect = (SecondSelect + 1) % 2;
			}
			else if(NextKey == SWAP_KEY_CLR){	
				SecondSelect = 0;		//네/아니오 선택 초기화
				ShopStatus = 0;			//아이템 선택으로 넘어감
			}
			else if(NextKey == SWAP_KEY_OK){
				if(!SecondSelect){	//예를 선택했으니, 우선 인벤토리가 비었나 봄세↓
					EmptySlot = GetItem(0, SellItemList[SellListFront + SelectedAnswer], SelectedQuantity);

					if(EmptySlot){	//구입 완료하였으면 돈을 감소
						Player.Gold = Player.Gold - ItemList[SellItemList[SellListFront + SelectedAnswer]].Cost * (10 + Sise) / 10 * SelectedQuantity;
						ShopStatus = 3;
					}
					else{			//구입 실패:슬롯없음
						ShopStatus = 4;
					}					
				}
				else{
					SecondSelect = 0;	//네/아니오 선택 초기화
					ShopStatus = 0;		//아이템 선택으로 넘어감
				}
			}
			SetColor(S_WHITE);
			DrawRect(5, 76 + SecondSelect * 15 + _TopSize, 170, 90 + SecondSelect * 15 + _TopSize);	//네/아니오:선택 위치표시
			break;

		case 3:		//구입 종료 확인 부분
			SetColorRGB(0, 30, 100);
			FillRectEx(4, 44 + _TopSize, 171, 70 + _TopSize, 1);
			SetColorRGB(0, 20, 70);
			DrawRect(3, 43 + _TopSize, 172, 71 + _TopSize);
			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			DrawStr(88, 52 + _TopSize, "구입을 완료 하였습니다.");
			if(NextKey == SWAP_KEY_OK || NextKey == SWAP_KEY_CLR){				//아이템 선택으로 넘어감
				ShopStatus = 0;
			}
			break;

		case 4:		//구입 실패
			SetColorRGB(0, 30, 100);
			FillRectEx(4, 44 + _TopSize, 171, 70 + _TopSize, 1);
			SetColorRGB(0, 20, 70);
			DrawRect(3, 43 + _TopSize, 172, 71 + _TopSize);
			SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
			DrawStr(88, 52 + _TopSize, "슬롯이 없습니다.");

			if(NextKey == SWAP_KEY_OK || NextKey == SWAP_KEY_CLR){				//아이템 선택으로 넘어감
				ShopStatus = 0;
			}
			break;
	}
	return 1;	//상점이 종료되지 않았음을 반환.
}


/*/14번 이벤트 라인{14,*,*} - 키입력 변수
void KeyState(int KeyValue, int Value)
{
	if(MovingDirection == SWAP_KEY_LEFT) Switch[Value] = 1;
	else Switch[Value] = 0;
}//*/