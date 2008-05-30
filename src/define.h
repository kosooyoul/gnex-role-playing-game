//chara.h
#define _CenterPositionX 52 + 24	//케릭터 표시위치 = 4*16-(8)-? -12 : 3
#define _CenterPositionY 40 + 16	//케릭터 표시위치 = 4*16-(8)-? -16 : 20

//map.h
#define _PlayerPosition 5		//주인공 화면위치 조절
#define _SubChipMoveable 99		//이동 가능한 하위칩 마지막 번호
#define _SupChipMoveable 39		//이동 가능한 상위칩 마지막 번호
#define _SupChipWall 139		//장애물에 대한 상위칩 마지막 번호

//socket.h
#define	SVR_IP	"127.0.0.1"		//"121.188.152.217" //서버 IP
#define	SVR_PORT	20001		//서버포트
#define SVR_BufferSize	10		//서버로부터 받은 데이터 목록의 크기

//item.h
#define InventorySize	16		//인벤토리 슬롯의 갯수