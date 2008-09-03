int SelectedAnswer = 0;		//첫번째 선택
int SelectedScroll = 0;		//아이템 목록 스크롤 수
int ThirdSelect = 1;	//선택 수량
int EventStatus = 0;		//이벤트 상태 / 상점 상태
int SecondSelect = 0;		//두번째 선택
int EmptySlot;				//아이템 추가를 완료 하였는지
int SellOrBuy = 0;			//상점 구입인지 판매인지
int BattleLimitMoveX = 0;	//전장맵 이동 제한
int BattleLimitMoveY = 0;	//전장맵 이동 제한

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
				PrintMessage(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
				NextKey = -1;
			}
			else
			{
				PrintMessage(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount + 1]);
				EventObject[EventNumber].LineCount--;
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
		case 15:	//전투처리
			if(Battle(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1]))
			{
				EventObject[EventNumber].LineCount = EventObject[EventNumber].LineCount + 2;
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



//0번 이벤트 라인{0,*,*} - 문장출력
void PrintMessage(int NameNumber,int MessageNumber)
{
	string MSG;
	string TempString;
	int Length;
	int i;

	if(MessageNumber == -1) MSG = EditMessage;
	else MSG = Message[MessageNumber];

	//반각문자는 72자 전각문자는 36자가 한 줄(반각문자 72*6자 전각문자 36*6자까지만 권장(6줄)(주인공 이미지 보일 정도까지만)
	Length = StrLen(MSG) / 36;
	//대화창 배경
	SetColorRGB(0, 0, 0);
	FillRectEx(4, 224 - 14 * Length, 235, 240, 2);

	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	for(i = 0; i < Length + 1; i++){
		if(i == 0) CopyImage(0, 220 - 14 * Length, interface_talksingle);	//대화창 한줄
		else CopyImage(0,  238 - 14 * i, interface_talkmulti);				//대화창 여러줄

		StrSub(TempString, MSG, i * 36, 36);
		DrawStr(9, 227 - (Length - i) * 14, TempString);
	}

	CopyImage(4, 202 - 14 * Length, interface_talkname);					//대화창 이름
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	switch(NameNumber){
		case -1://플레이어 이름
			DrawStr(38, 207 - 14 * Length, Player.Name);
			break;
		case 0:	//이벤트 자신
			DrawStr(38, 207 - 14 * Length, NameList[EventObject[SerchEvent() - 1].NameNumber - 1]);
			break;
		default://지정
			DrawStr(38, 207 - 14 * Length, NameList[NameNumber - 1]);
			break;
	}

	CopyImage(0, 238, interface_talkborder);								//대화창 하단 테두리
	CopyImage(216, 210 - Length * 14, interface_okinfo);					//대화창 상단 ok
}

//1번 이벤트 라인{1,*,*,*,*} - 변수 및 단어로 문장 조합
void MakeMessage(int FrontMessage, int NextMessage, int ValueType, int Value)
{
	string TempString;

	StrCpy(EditMessage, Message[FrontMessage]);

	switch(ValueType)
	{
		case 0:
			MakeStr1(TempString, " %d ", Variable[Value]);
			StrCat(EditMessage, TempString);
			break;
		case 1:
			MakeStrStr(TempString, " %s ", ItemList[Value].Name);
			StrCat(EditMessage, TempString);
			break;
		case 2:
			MakeStrStr(TempString, " %s ", EquipList[Value].Name);
			StrCat(EditMessage, TempString);
			break;
		case 3:
			MakeStrStr(TempString, " %s ", SkillList[Value].Name);
			StrCat(EditMessage, TempString);
			break;
		case 4:
			MakeStrStr(TempString, " %s ", NameList[Value]);
			StrCat(EditMessage, TempString);
			break;
	}
	StrCat(EditMessage, Message[NextMessage]);
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
			Variable[Value] = Player.MAXSP;break;
		case 5://Variable[Value] = MP
			Variable[Value] = Player.SP;break;
		case 6://Variable[Value] = STR
			Variable[Value] = Player.STR;break;
		case 7://Variable[Value] = DEF
			Variable[Value] = Player.DEF;break;
		case 8://Variable[Value] = WIS
			Variable[Value] = Player.INT;break;
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
					Player.MAXSP += Variable[Value];break;
				case 5://MP
					Player.SP += Variable[Value];break;
				case 6://STR
					Player.STR += Variable[Value];break;
				case 7://DEF
					Player.DEF += Variable[Value];break;
				case 8://WIS
					Player.INT += Variable[Value];break;
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
					Player.MAXSP -= Variable[Value];break;
				case 5://MP
					Player.SP -= Variable[Value];break;
				case 6://STR
					Player.STR -= Variable[Value];break;
				case 7://DEF
					Player.DEF -= Variable[Value];break;
				case 8://WIS
					Player.INT -= Variable[Value];break;
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
					Player.MAXSP = Variable[Value];break;
				case 5://MP
					Player.SP = Variable[Value];break;
				case 6://STR
					Player.STR = Variable[Value];break;
				case 7://DEF
					Player.DEF = Variable[Value];break;
				case 8://WIS
					Player.INT = Variable[Value];break;
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
		if(Inventory[i].ListNumber == ItemNumber && Inventory[i].Quantity < 99)	//이미 소지, 소지한도 여유인 경우
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

//15번 이벤트 라인{15,*,*} - 전투처리(적그룹번호, 맵종류)
int Battle(int GrpNum, int BatMap){
	string Temp;
	int i, j;
	int TargetEnemy;

/*
	if(GrpNum == 0 && BatMap == 0){
		DrawBatMap(BatMap);			//전투맵출력
		DrawBatInterface;			//인터페이스출력
		DrawBatMenu(EventStatus);	//메뉴출력
	}
	//MakeStr2(Temp, "덱스 : 플레이어(%d)  적(%d)", Player.DEX, EnemyObject[0].DEX);
	//DrawStr(4,40,Temp);
	//MakeStr2(Temp, "턴수 : 플레이어(%d)  적(%d)", Player.Turn, EnemyObject[0].Turn);
	//DrawStr(4,60,Temp);
	//SetFontType(S_FONT_LARGE, S_RED, S_BLACK, S_ALIGN_LEFT);
	//MakeStr2(Temp, "전장좌표 : %d, %d", Player.BatX, Player.BatY);
	//DrawStr(4,70,Temp);
*/	

	if(EventStatus){
		SetColor(S_BLACK);
		FillRectEx(0, 32, 239, 244, 2);
		DrawBatInterface();
		DrawBatMap(0);		
	}	

	switch(EventStatus){
		//초기 설정
		case 0:
			for(i = 0; i < 10; i++)
				for(j = 0; j < 12; j++)
					BattleLayer[i][j] = 0;

			BattleLayer[Player.BatY][Player.BatX] = -1;

			while(1){
				EnemyObject[0].BatX = Rand(0,12);
				EnemyObject[0].BatY = Rand(0,10);

				i = Area[Player.map].x_start + EnemyObject[0].BatX + Player.x-BattlePosX;
				j = Area[Player.map].y_start + EnemyObject[0].BatY + Player.y-BattlePosY;

				if(SupLayer[j][i] <= _SupChipMoveable || SupLayer[j][i] > _SupChipWall){
					if(BattleLayer[EnemyObject[0].BatY][EnemyObject[0].BatX] == 0){
						BattleLayer[EnemyObject[0].BatY][EnemyObject[0].BatX] = 1;
						break;
					}
				}
			}
			EnemyObject[0].HP = EnemyObject[0].MAXHP;
			EnemyObject[0].SP = EnemyObject[0].MAXSP;
			EventStatus = 1;

		//우선턴 결정
		case 1:
			//if(NextKey != SWAP_KEY_OK)break;

			if(EnemyObject[0].Turn < 10 && Player.Turn < 10){
				if(EnemyObject[0].DEX <= Player.DEX){
					Player.Turn += (Player.DEX + 1) * 10 / (EnemyObject[0].DEX + 1);
					EnemyObject[0].Turn += 10;
				}else{
					EnemyObject[0].Turn += EnemyObject[0].DEX * 10 / Player.DEX;
					Player.Turn += 10;
				}
			}
			else{
				if(EnemyObject[0].Turn <= Player.Turn){
					Player.Turn -= 10;
					BattleLimitMoveX = 0;	//이동제한 초기화
					BattleLimitMoveY = 0;
					EventStatus = 2;	//주인공 턴
				}else{
					EnemyObject[0].Turn -= 10;
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
								Player.BatD = 2;	//기본값으로 초기화(방향)
								Player.Turn = 0;			//주인공 턴 초기화
								EnemyObject[0].Turn = 0;	//적 턴 초기화
								return 2;		//도주
							}
					}
					break;

				//주인공턴-메뉴모드
				case 2:

					//메뉴표시(휴식을 넣느냐 안넣느냐)
					if(Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY) == 0){
						for(i = 0; i < 7; i++){
							if(i == SecondSelect) CopyImage(140, 80+i*19, interface_batmenu[i]);
							else CopyImageEx(145, 80+i*19, interface_batmenu[i],2,0,0,0);
						}
					}else{
						for(i = 0; i < 6; i++){
							if(i == SecondSelect) CopyImage(140, 80+i*19, interface_batmenu[i]);
							else CopyImageEx(145, 80+i*19, interface_batmenu[i],2,0,0,0);
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
									break;

								//도구
								case 3:
									break;

								//상태
								case 4:
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
					break;

				//주인공턴-도구사용모드
				case 5:
					break;
				
				//주인공턴-상태보기모드
				case 6:
					break;
				
			}
			break;

		//적 턴
		case 3:
			SetFontType(S_FONT_LARGE, S_YELLOW, S_BLACK, S_ALIGN_LEFT);
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
			if(Player.BatY > 0 && Player.y - (BattlePosY - Player.BatY) > 0){	if(SupLayer[TempY - 1][TempX] <= _SupChipMoveable || SupLayer[TempY - 1][TempX] > _SupChipWall){
					if((Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY - 1)) <= Player.MOV)
						if(BattleLayer[Player.BatY-1][Player.BatX] == 0){Player.BatY--;BattleLimitMoveY--;ScrollMapY=15;}
			}}
			Player.BatD = 0;
			break;
		case SWAP_KEY_DOWN:
			if(Player.BatY < 9){												if(SupLayer[TempY + 1][TempX] <= _SupChipMoveable || SupLayer[TempY + 1][TempX] > _SupChipWall){
					if((Abs(BattleLimitMoveX) + Abs(BattleLimitMoveY + 1)) <= Player.MOV)
						if(BattleLayer[Player.BatY+1][Player.BatX] == 0){Player.BatY++;BattleLimitMoveY++;ScrollMapY=-15;}
			}}
			Player.BatD = 2;
			break;
		case SWAP_KEY_LEFT:
			if(Player.BatX > 0 && Player.x - (BattlePosX - Player.BatX) > 0){	if(SupLayer[TempY][TempX - 1] <= _SupChipMoveable || SupLayer[TempY][TempX - 1] > _SupChipWall){
					if((Abs(BattleLimitMoveX - 1) + Abs(BattleLimitMoveY)) <= Player.MOV)
						if(BattleLayer[Player.BatY][Player.BatX-1] == 0){Player.BatX--;BattleLimitMoveX--;ScrollMapX=15;}
			}}
			Player.BatD = 3;
			break;
		case SWAP_KEY_RIGHT:
			if(Player.BatX < 11){												if(SupLayer[TempY][TempX + 1] <= _SupChipMoveable || SupLayer[TempY][TempX + 1] > _SupChipWall){
					if((Abs(BattleLimitMoveX + 1) + Abs(BattleLimitMoveY)) <= Player.MOV)
						if(BattleLayer[Player.BatY][Player.BatX+1] == 0){Player.BatX++;BattleLimitMoveX++;ScrollMapX=-15;}
			}}
			Player.BatD = 1;
	}
	BattleLayer[Player.BatY][Player.BatX] = -1;

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

/*/14번 이벤트 라인{14,*,*} - 키입력 변수
void KeyState(int KeyValue, int Value)
{
	if(MovingDirection == SWAP_KEY_LEFT) Switch[Value] = 1;
	else Switch[Value] = 0;
}//*/