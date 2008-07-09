int Switch[50];
int Variable[50];

struct EventObject{
	//기본 정보
	int NameNumber;		//이름목록의 번호
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
}EventObject[10];

//이벤트들의 이름
const string NameList[10] = {
						"도구상인", "장비상인", "스킬상인", "여관주인", "상인",
						"몬스터", "주민", "사병", "마법사", "정체불명"
};

string Message[12]={
"당신 누구쇼? 바바지?",
"안녕하세요? 긴 문장 테스트? 가나다라마바사아1234567890킁안녕하세요? 안녕안녕 뭐? 가나다라마바사아1234567890 킁~안녕하세요?안녕안녕 뭐? 가나다라마바사아1234567890-킁안녕하세요? 안녕안녕 뭐? 가나다라마바사아1234567890",
"문장 출력 잘되나?",
"이벤트 스크립트 테스트",
"게임 알고리즘 매니아 아야넷",
"알피지 게임 만들기",
"우훗",
"예~ +ㅁ+",
"아니요 ㅜㅜ",
"레벨이 상승하였습니다!",
"체력이 감소하였습니다!",
"마나가 감소하였습니다!"
};

int EventLine[35] = { 
 0, 0, 1,-1,
 0, 0, 2,-1,
 0, 0, 3,-1,
 0, 0, 4,-1,
 0, 0, 5,-1,
 0, 0, 6,-1,
 0, 0, 7,14,-2, 4,14, 0,-1, 2,-1
};


//초기 이벤트 설정
void SetEvent(){
	int Actor;

	EventObject[0].NameNumber = 1;		//테스트 코드
	EventObject[0].graphic = 1;		//테스트 코드
	EventObject[0].map = 0;		//테스트 코드
	EventObject[0].x = 10;		//테스트 코드
	EventObject[0].y = 10;		//테스트 코드
	EventObject[0].direction = 2;		//테스트 코드
	EventObject[0].frame = 0;		//테스트 코드
	EventObject[0].EventLoop = 0;		//테스트 코드
	EventObject[0].EventPage = 24;		//테스트 코드
	EventObject[0].LineCount = 0;		//테스트 코드
	EventObject[0].ScrollMapX = 0;
	EventObject[0].ScrollMapY = 0;

	EventObject[1].NameNumber = 2;		//테스트 코드
	EventObject[1].graphic = 2;		//테스트 코드
	EventObject[1].map = 0;		//테스트 코드
	EventObject[1].x = 1;		//테스트 코드
	EventObject[1].y = 1;		//테스트 코드
	EventObject[1].direction = 1;		//테스트 코드
	EventObject[1].frame = 0;		//테스트 코드
	EventObject[1].EventLoop = 0;		//테스트 코드
	EventObject[1].EventPage = 4;		//테스트 코드
	EventObject[1].LineCount = 0;		//테스트 코드
	EventObject[1].ScrollMapX = 0;
	EventObject[1].ScrollMapY = 0;

	EventObject[2].NameNumber = 3;		//테스트 코드
	EventObject[2].graphic = 0;		//테스트 코드
	EventObject[2].map = 0;		//테스트 코드
	EventObject[2].x = 6;		//테스트 코드
	EventObject[2].y = 6;		//테스트 코드
	EventObject[2].direction = 1;		//테스트 코드
	EventObject[2].frame = 0;		//테스트 코드
	EventObject[2].EventLoop = 0;		//테스트 코드
	EventObject[2].EventPage = 8;		//테스트 코드
	EventObject[2].LineCount = 0;		//테스트 코드
	EventObject[2].ScrollMapX = 0;
	EventObject[2].ScrollMapY = 0;

	EventObject[3].NameNumber = 4;		//테스트 코드
	EventObject[3].graphic = 3;		//테스트 코드
	EventObject[3].map = 0;		//테스트 코드
	EventObject[3].x = 7;		//테스트 코드
	EventObject[3].y = 8;		//테스트 코드
	EventObject[3].direction = 1;		//테스트 코드
	EventObject[3].frame = 0;		//테스트 코드
	EventObject[3].EventLoop = 0;		//테스트 코드
	EventObject[3].EventPage = 12;		//테스트 코드
	EventObject[3].LineCount = 0;		//테스트 코드
	EventObject[3].ScrollMapX = 0;
	EventObject[3].ScrollMapY = 0;

	EventObject[4].NameNumber = 5;		//테스트 코드
	EventObject[4].graphic = 5;		//테스트 코드
	EventObject[4].map = 0;		//테스트 코드
	EventObject[4].x = 8;		//테스트 코드
	EventObject[4].y = 7;		//테스트 코드
	EventObject[4].direction = 1;		//테스트 코드
	EventObject[4].frame = 0;		//테스트 코드
	EventObject[4].EventLoop = 0;		//테스트 코드
	EventObject[4].EventPage = 16;		//테스트 코드
	EventObject[4].LineCount = 0;		//테스트 코드
	EventObject[4].ScrollMapX = 0;
	EventObject[4].ScrollMapY = 0;

	EventObject[5].NameNumber = 6;		//테스트 코드
	EventObject[5].graphic = 6;		//테스트 코드
	EventObject[5].map = 0;		//테스트 코드
	EventObject[5].x = 2;		//테스트 코드
	EventObject[5].y = 4;		//테스트 코드
	EventObject[5].direction = 1;		//테스트 코드
	EventObject[5].frame = 0;		//테스트 코드
	EventObject[5].EventLoop = 0;		//테스트 코드
	EventObject[5].EventPage = 0;		//테스트 코드
	EventObject[5].LineCount = 0;		//테스트 코드
	EventObject[5].ScrollMapX = 0;
	EventObject[5].ScrollMapY = 0;

	//맵상에 이벤트 적용
	for(Actor = 1; Actor <= 6; Actor++)
		EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] = Actor;
}

void MoveEventRandom(int EventNumber)
{
	switch(Rand(0, 20))
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
		CopyImage((EventObject[EventNumber].x - Player.x - Area[Player.map].x_start) * 16 + _CenterPositionX + ScrollMapX - EventObject[EventNumber].ScrollMapX, (EventObject[EventNumber].y - Player.y - Area[Player.map].y_start) * 16 + _CenterPositionY + ScrollMapY - EventObject[EventNumber].ScrollMapY + _TopSize, chara[EventObject[EventNumber].graphic * 16 + EventObject[EventNumber].direction*4 + EventObject[EventNumber].frame/4]); //4패턴
}

//이벤트 맵 그리기 - 주인공과 같은 레이어 출력
void DrawEventLayer(){
	int x, y;
	int TempX, TempY;

	TempX = Area[Player.map].x_start + Player.x;
	TempY = Area[Player.map].y_start + Player.y;

	for(y = -7; y < 9;y++)
	{
		for(x = -8; x < 9;x++)
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