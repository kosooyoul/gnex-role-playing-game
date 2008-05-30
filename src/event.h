int Switch[50];
int Variable[50];

struct EventObject{
	//기본 정보
	int	x, y;
	int direction;
	int frame;
	int graphic;
	int map;
	//발생조건
	int Switch;			//비교할 스위치 번호(Switch[Switch]의 값이 On(=1)인 경우에 실행)
	int Variable;		//비교할 변수 번호
	int Operation;		//변수 비교 기호
	int VariableValue;	//이벤트가 원하는 변수 값
	
	int EventLoop;		//명령 반복 횟수
	int EventPage;		//수행할 명령 목록
	int LineCount;		//수행중인 명령 위치

	int ScrollMapX;
	int ScrollMapY;
}EventObject[3];

string Message[9]={
"당신 누구쇼? 바바지?",
"안녕하세요?",
"문장 출력 잘되나?",
"이벤트 스크립트 테스트",
"게임 알고리즘 매니아 아야넷",
"알피지 게임 만들기",
"우훗",
"예~ +ㅁ+",
"아니요 ㅜㅜ"
};

int EventLine[40] = { 
 0, 1, 0, 2,14, 1, 7, 8, 3, 2,
 0, 0,11, 1, 2, 2, 3, 0, 7,-1,
 0, 8,-1, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0,-1, 0, 1, 0, 0,-1
};


//초기 이벤트 설정
void SetEvent(){
	EventObject[0].graphic = 1;		//테스트 코드
	EventObject[0].map = 0;		//테스트 코드
	EventObject[0].x = 10;		//테스트 코드
	EventObject[0].y = 10;		//테스트 코드
	EventObject[0].direction = 1;		//테스트 코드
	EventObject[0].frame = 0;		//테스트 코드
	EventObject[0].EventLoop = 0;		//테스트 코드
	EventObject[0].EventPage = 0;		//테스트 코드
	EventObject[0].LineCount = 0;		//테스트 코드
	EventObject[0].ScrollMapX = 0;
	EventObject[0].ScrollMapY = 0;

	EventObject[1].graphic = 2;		//테스트 코드
	EventObject[1].map = 0;		//테스트 코드
	EventObject[1].x = 1;		//테스트 코드
	EventObject[1].y = 1;		//테스트 코드
	EventObject[1].direction = 1;		//테스트 코드
	EventObject[1].frame = 0;		//테스트 코드
	EventObject[1].EventLoop = 0;		//테스트 코드
	EventObject[1].EventPage = 35;		//테스트 코드
	EventObject[1].LineCount = 0;		//테스트 코드
	EventObject[1].ScrollMapX = 0;
	EventObject[1].ScrollMapY = 0;
}

void MoveEventRandom(int EventNumber)
{
	switch(Rand(0, 5))
	{
		case 0:
			SetDirection(EventNumber + 1, SWAP_KEY_RIGHT);
			MovePosition(EventNumber + 1, SWAP_KEY_RIGHT);break;
		case 1:
			SetDirection(EventNumber + 1, SWAP_KEY_LEFT);
			MovePosition(EventNumber + 1, SWAP_KEY_LEFT);break;
		case 2:
			SetDirection(EventNumber + 1, SWAP_KEY_UP);
			MovePosition(EventNumber + 1, SWAP_KEY_UP);break;
		case 3:
			SetDirection(EventNumber + 1, SWAP_KEY_DOWN);
			MovePosition(EventNumber + 1, SWAP_KEY_DOWN);			
	}
}

//맵 스크롤
void EventScroll(int EventNumber){
	if(EventObject[EventNumber].ScrollMapX)
	{
		if(EventObject[EventNumber].ScrollMapX>0)EventObject[EventNumber].ScrollMapX-=3;
		else EventObject[EventNumber].ScrollMapX+=3;
	}
	else if(EventObject[EventNumber].ScrollMapY)
	{
		if(EventObject[EventNumber].ScrollMapY>0)EventObject[EventNumber].ScrollMapY-=3;
		else EventObject[EventNumber].ScrollMapY+=3;
	}
}


void DrawEvent(int EventNumber){
	if(EventObject[EventNumber].ScrollMapX || EventObject[EventNumber].ScrollMapY)
		EventObject[EventNumber].frame = (EventObject[EventNumber].frame+1) % 16;	//MOVE
	else
		EventObject[EventNumber].frame = (EventObject[EventNumber].frame) % 16;		//NOT MOVE
	if(EventObject[EventNumber].x >= Area[Player.map].x_start && EventObject[EventNumber].y >= Area[Player.map].y_start && EventObject[EventNumber].x < Area[Player.map].x_start + Area[Player.map].x_size && EventObject[EventNumber].y < Area[Player.map].y_start + Area[Player.map].y_size)
		CopyImage((EventObject[EventNumber].x - Player.x - Area[Player.map].x_start) * 16 + _CenterPositionX + ScrollMapX - EventObject[EventNumber].ScrollMapX, (EventObject[EventNumber].y - Player.y - Area[Player.map].y_start) * 16 + _CenterPositionY + ScrollMapY - EventObject[EventNumber].ScrollMapY, chara[EventObject[EventNumber].graphic * 16 + EventObject[EventNumber].direction*4 + EventObject[EventNumber].frame/4]); //4패턴
}

//이벤트 맵 그리기 - 주인공과 같은 레이어 출력
void DrawEventLayer(){
	int x, y;
	int TempX, TempY;

	TempX = Area[Player.map].x_start + Player.x;
	TempY = Area[Player.map].y_start + Player.y;

	for(y = -5; y < 7;y++)
	{
		for(x = -6; x < 7;x++)
		{
			if(TempX + x < 30 && TempY + y < 30 && TempX + x >= 0 && TempY + y >= 0)
				if(EventLayer[TempY + y][TempX + x] > 0)
				{
					EventScroll(EventLayer[TempY + y][TempX + x]-1);
					DrawEvent(EventLayer[TempY + y][TempX + x]-1);
				}
		}
		if(y == 0)DrawPlayer();	//주인공 출력
	}
}

int SerchEvent()
{
	switch(Player.direction)
	{
		case 0:	//상
			return EventLayer[Area[Player.map].y_start + Player.y - 1][Area[Player.map].x_start + Player.x];
		case 2:	//하
			return EventLayer[Area[Player.map].y_start + Player.y + 1][Area[Player.map].x_start + Player.x];
		case 3:	//좌
			return EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x - 1];
		case 1:	//우
			return EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x + 1];
	}
}