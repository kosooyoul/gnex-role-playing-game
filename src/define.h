struct Point{
	int X;
	int Y;
};

#define MAX_EVENT_COUNT		17		//이벤트 수 현재 17 개다. 최대 카운터 + 1
#define MAX_AREA_COUNT		6		//지역 수

//맵표시관련 모듈에 대해서
#define _TopSize	32				//상단의 인터페이스 구성

//색상에 대해서
#define S_RED		109		//빨간색
#define S_MARGENTA	112		//보라색
#define S_ROSE		114		//장미색
#define S_ORANGE	117		//주황색
#define S_PINK		119		//분혼색
#define S_APRICOT	122		//살구색
#define S_YELLOW	129		//노란색
#define S_GREEN		43+1
#define S_CYAN		46+27
#define S_BLUE		20
//chara.h
#define _CenterPositionX 52 + 24+32	//케릭터 표시위치 = 4*16-(8)-? -12 : 3	;+16*2	+0
#define _CenterPositionY 40 + 16+32	//케릭터 표시위치 = 4*16-(8)-? -16 : 20	;+16*2	+32
#define InventorySize	48			//인벤토리 슬롯의 갯수
#define SkillSlotSize	48			//스킬목록 슬롯의 갯수
#define EquipmentSize	48			//장비목록 슬롯의 갯수

//map.h
#define _PlayerPosition 7			//주인공 화면위치 조절
#define _SubChipMoveable 99			//이동 가능한 하위칩 마지막 번호
#define _SupChipMoveable 39			//이동 가능한 상위칩 마지막 번호
#define _SupChipWall 139			//장애물에 대한 상위칩 마지막 번호

//socket.h
//#define	SVR_IP	"127.0.0.1"	//인천집 서버 IP //인천집:118.37.164.161, 자취방:121.188.152.217
string	SVR_IP = "127.0.0.1";	//인천집 서버 IP //인천집:118.37.164.161, 자취방:121.188.152.217
#define	SVR_PORT	20001			//서버포트
#define SVR_BufferSize	10			//서버로부터 받은 데이터 목록의 크기

//interface.h
#define QuickSlotSize	18			//퀵슬롯의 슬롯 갯수
#define QuickSlotWidth	6			//퀵슬롯의 너비
#define InterPX			0			//인터페이스 위치
#define InterPY			82			//인터페이스 위치
#define MenuPX			4			//메뉴 위치
#define MenuPY			110			//메뉴 위치
#define BattlePosX		5			//전장 맵 위치
#define BattlePosY		5

//event.h
#define _LeftMSG		0			//메시지 표시 위치
#define _TopMSG			32			//메시지 표시 위치

//리턴값 정의
#define ERROR		-2
#define Null		-1
#define No			0
#define Yes			1