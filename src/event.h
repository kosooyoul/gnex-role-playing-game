int Switch[10];
int Variable[10];

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

string Message[5]={"DOCTOR : 알롱지~","메시지2","메시지3","메시지4","메시지5"};
int EventLine[2][20] = { 1, 1, 2, 0, 0,		 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	 -1,
						 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	 0, 0,	-1,-1};

//초기 이벤트 설정
void SetEvent(){
	EventObject[0].map = 0;		//테스트 코드
	EventObject[0].x = 10;		//테스트 코드
	EventObject[0].y = 10;		//테스트 코드
	EventObject[0].direction = 1;		//테스트 코드
	EventObject[0].frame = 0;		//테스트 코드
	EventObject[0].EventLoop = 1;		//테스트 코드
	EventObject[0].EventPage = 0;		//테스트 코드
	EventObject[0].LineCount = 0;		//테스트 코드
	EventObject[0].ScrollMapX = 0;
	EventObject[0].ScrollMapY = 0;

	EventObject[1].map = 0;		//테스트 코드
	EventObject[1].x = 1;		//테스트 코드
	EventObject[1].y = 1;		//테스트 코드
	EventObject[1].direction = 1;		//테스트 코드
	EventObject[1].frame = 0;		//테스트 코드
	EventObject[1].EventLoop = 0;		//테스트 코드
	EventObject[1].EventPage = 0;		//테스트 코드
	EventObject[1].LineCount = 0;		//테스트 코드
	EventObject[1].ScrollMapX = 0;
	EventObject[1].ScrollMapY = 0;
}

void MoveEventRandom(int EventNumber)
{
	switch(Rand(0, 5))
	{
		case 0:
			MovePosition(EventNumber + 1, SWAP_KEY_RIGHT);break;
		case 1:
			MovePosition(EventNumber + 1, SWAP_KEY_LEFT);break;
		case 2:
			MovePosition(EventNumber + 1, SWAP_KEY_UP);break;
		case 3:
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
			CopyImage((EventObject[EventNumber].x - Player.x) * 16 + _CenterPositionX + ScrollMapX - EventObject[EventNumber].ScrollMapX, (EventObject[EventNumber].y - Player.y) * 16 + _CenterPositionY + ScrollMapY - EventObject[EventNumber].ScrollMapY, chara12[EventObject[EventNumber].direction*4 + EventObject[EventNumber].frame/4]); //4패턴
}

//이벤트 맵 그리기 - 주인공과 같은 레이어 출력
void DrawEventLayer(){
	int x, y;

	for(y = -4; y < 6;y++)
	{
		for(x = -4; x < 5;x++)
		{
			if(Area[Player.map].x_start + Player.x + x < 30 && Area[Player.map].y_start + Player.y + y < 30 && Area[Player.map].x_start + Player.x + x >= 0 && Area[Player.map].y_start + Player.y + y >= 0)
				if(EventLayer[Area[Player.map].y_start + Player.y + y][Area[Player.map].x_start + Player.x + x] > 0)
				{
					EventScroll(EventLayer[Area[Player.map].y_start + Player.y + y][Area[Player.map].x_start + Player.x + x]-1);
					DrawEvent(EventLayer[Area[Player.map].y_start + Player.y + y][Area[Player.map].x_start + Player.x + x]-1);
				}
		}
		if(y == 0)DrawPlayer();	//주인공 출력
	}
}