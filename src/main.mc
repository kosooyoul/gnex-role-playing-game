/*
### 프로그램의 정보 ###

         작성자 : 고수열(ID : Ahyane / kosooyoul, Email : ahyane@ahyane.net, Homepage : http://www.ahyane.net)
   구현프로그램 : RPG게임(스토리 및 제목 미정, 게임 시스템 쯔꾸르단테PC를 모티브, 네트워킹시스템 구현 예정)
   구현시작일시 : 1월 25일
       제작동기 : 평소 게임을 만들어 보고 싶어 스크립터와 같은 툴을 이용했지만 제대로 된 게임을 만들지 못하였음. 하지만 친구가 제작한 모바일 게임본 후, 내 스스로 구현이 가능할 것으로 보여 개인 프로젝트로 시작하게 됨
           소속 : 세명대학교 정보통신학과 03학번/09년 졸업예정자


### 핸드폰 RPG게임 구현 진행 과정 ###

 0일차: 1월25일 : GNEX 관련 서적으로부터 기능 및 함수 조사, 예제로 나와있는 슈팅게임 Starwars2 분석
 1일차: 1월26일 : 인터넷에서 GNEX 조사, 개발환경 설치
 2일차: 1월27일 : RPG게임의 기본 시스템 디자인 시도
 3일차: 1월28일 : 맵 디자인 및 상태 출력 시도
 4일차: 1월29일 : 맵 스크롤 및 액터 움직임 구현, 아이템 및 스킬 목록 출력 시도
 5일차: 1월30일 : 장착아이템부분 디자인, 아이템/스킬/장비 아이콘 출력 테스트, 키 이벤트 코드/함수로 분리, NPC삽입 시도 및 NPC 랜덤이동루프 시도
 6일차: 1월31일 : 이벤트에 접근하여 버튼 누를경우 문장표시 시도(단문장 하나), 한글 작게 출력안되 안습
 7일차: 2월 1일 : 문장 반각문자 108자/전각문자 54자출력이내 출력, 소스 정리 및 헤더파일로 분리
--[ 제작 중지 ]-------------------------------------------------------------------------------------------------------
 7.5차:         : 일본어 공부, 게임 구상은 머릿속으로만 함
--[ 다시 시작 ]-------------------------------------------------------------------------------------------------------
 8일차: 2월28일 : 기존 작성하던 프로젝트를 개선하기위해 작성한 소스를 참고하여 코드를 다시 작성
 9일차: 2월29일 : 새 프로젝트 생성, 맵출력 및 케릭터 이동 구현, 문장출력구현 라인경계에서 한글깨짐, 이동 및 변수스위치조작등 기타이벤트 구현중
10일차: 3월 1일 : 조건분기 구현, 선택지 구현 중, 이벤트 목록 수행 구현, 딜레이 구현, 맵 에디터 프로그램 제작VB(2개 레이어 맵)
11일차: 3월 2일 : 맵 에디터 프로그램 제작VB, 맵 출력 레이어 2개로 출력, 맵 칩 수집
12일차: 3월 3일 : 맵 칩 수집, 맵 에디터 부분 제작 완료(저장/로드 가능), 이동금지 칩 범위 및 조건줄 수정, 프로그램에서 작성한 맵 게임에서 테스트(케릭터 사이즈 최대 수직 2개 셀로 설정 요망)
13일차: 3월 4일 : 케릭터 이동 부분 개선, 이벤트 함수 보완(문장 조합), 이벤트 화면출력 및 이동 테스트(문제점:다른 이벤트와도 주인공과도 겹침/->해결), 맵 데이터에 이벤트 레이어 추가
14일차: 3월 5일 : 이벤트 실행 구현, 문장 출력시 대기하도록 구현, 맵 이동 확인,이동 후 맵 밖에서 이벤트 출력 안되도록 버그 수정, 케릭터 그래픽 적용및 그래픽 사이즈 변경, 이벤트 라인 1차원 배열로 변경
15일차: 3월 6일 : 케릭터이동 함수에서 방향전환 분리, 이벤트 편집기 제작 중VB
16일차: 3월 7일 : 이벤트 편집기 제작 중VB, 삼성 SCH-W290 기기에 프로그램 다운로드하여 테스트(속도 테스트 >> 케릭터 30셀 이동:기기-약 8초경과, 컴퓨터-약 4.5초경과//표시하는 화면에 비해 디스플레이가 큼>사이즈 176*205)->반복문에서 수행되는 계산 부분 줄이고 한화면에 표시되는 셀수를 늘림, 주인공이 키입력도중 이벤트가 접근할 경우 겹치던 현상 해결
17일차: 3월 8일 : 서버/클라이언트 구현 연습(예뮬레이터에선 잘 작동함/서버는 VB로 구현-다른 언어로 작성하여 SQL연동 요망)
18일차: 3월 9일 : 서버/클라이언트 구현 연습(핸드폰에서 네트워크 접속시 로컬네트워크로 접속되지 않으므로 서버는 전용선이거나 VPN설치가 필요)
19일차: 3월10일 : 선택지 구현(간단 예/아니오 차후 확장 요망), 
20일차: 3월14일 : 서버/클라이언트 연습 및 테스트(서버-일반PC, 클라이언트-휴대폰)-가능성 보임
21일차: 3월15일 : 이벤트 편집기 제작 중VB(이벤트만 작성가능, 기능 확대 및 맵 이벤트와 연동 요망)
22일차: 3월16일 : 이벤트 편집기 제작 중VB(작성 이벤트 적용가능/조건분기의 라인변경부분에서 매치가 잘 안됨), 조건분기 및 선택지 이벤트라인카운터에 관한 오류 수정
--[ 제작 중지 ]-------------------------------------------------------------------------------------------------------
22.5차:         : 졸업 작품하면서 VB로 소켓프로그래밍 연습 및 소켓 서버 구현, GNEX 소켓 클라이언트 작성 연습
--[ 다시 시작 ]-------------------------------------------------------------------------------------------------------
23일차: 5월29일 : 소켓통신 구현(졸작서버 프로그램과 통신 테스트) 헤더파일로 추가, 모드 구분(0:타이틀,1:롤플레잉모드)
24일차: 5월30일 : 아이템 구조체 작성 및 상점처리 구현 시도
25일차: 6월 2일 : 상점처리 구현(물품 카테고리 구분안됨, 최대 판매 물품 10개로 한정), 아이템 습득 부분 구현(카테고리 구분안됨, 소지한도 (ex)20을 초과)
26일차: 6월 3일 : 주인공 상태 인터페이스(게이지 등) 구현 중(그래픽 수정요망), 퀵슬롯 표현(카테고리 사용하기 위해 인벤토리배열을 다시 배열로 만들거나 해야함, 아니면 코드만 늘어남), 상점처리(14번이벤트)에서 시세비율적용(* 1.Sise), 메뉴인터페이스 연습때 만들던 시스템 가져와 적용 및 테스트, 아이템 아이콘 추가, 메인소스 정리
27일차: 6월28일 : GNEX(ⓜPlayer)가 설치되있는 모바일 구입 및 디스플레이 사이즈 측정(가로:240,세로:298), 측정된 사이즈에 맞게 출력화면 재구성 요망
28일차: 7월 4일 : LG-SH150A(본인단말기)사이즈에 맞추어 출력 화면 재조정, 테스트 코드 추가, 소스정리 요망
29일차: 7월 6일 : 인터페이스 재구성
30일차: 7월 7일 : 인터페이스 일부 수정, 스킬 & 장비에 대한 데이터 작업, 인터페이스중 사용자 메뉴 그래픽 변경 및 수정, 하단에 메시지 출력되도록 함
31일차: 7월 8일 : 인터페이스:메뉴 및 인벤토리 스킬목록 장비목록 개선 및 목록스크롤과 선택한슬롯에 대한 기능과 퀵슬롯설정과 연결

메뉴시스템 추가 요망
전투시스템 추가 요망:필드턴제시뮬레이션(어스토니시아스토리)

상점시스템 수정 요망
인터페이스 수정 요망


*/


#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	19732			//테스트 고유번호
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"AHYANET RPG"
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
%}
#else
%{
	#DEFINE PLAYERVER	4
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE APPTYPE		1
	#DEFINE APPCPID		19732			//테스트 고유번호
	#DEFINE APPID		10152			//프로그램 ID
	#DEFINE APPNAME		"AHYANET 10152"	//프로그램 이름
	#DEFINE COMPTYPE	2
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include <mapchip.sbm>		//* s구성화면 칩 로드
#include "define.h"			//*! 정의목록
#include "mapdata.h"		//*  맵데이터
#include "map.h"			//   맵표시
#include "event.h"			//   이벤트
#include "eventscript.h"	//   이벤트처리
#include "item.h"			//*  아이템
#include "monster.h"		//*  몬스터
#include "skill.h"			//*  스킬
#include "equip.h"			//*  장비
#include "chara.h"			//   주인공
#include "interface.h"		//   인터페이스
#include "socket.h"			// ! 소켓

int MovingDirection = 0;
int RunningEventNumber = -1;	//RunningEventNumber번째의 이벤트를 수행, -1은 아무것도 수행안함
int NextKey = -1;				//이벤트 수행중 키입력을 기다리기 위함
int GameMode = 0;				//게임 모드/ 0:타이틀, 1:롤플레이

//******************************************************************************************************[ Main ]
void main()
{
	//mode: title, play(move), battle, event, menu(item,skill,status,.....)
	SetItem();
	SetSkill();
	SetEquip();
	SetArea();
	SetEvent();
	InitPlayer();						//주인공 초기화

	SetTimer(40, 1);					//이동 및 맵 출력 시간 간격, 이벤트 수행 속도(에뮬 40, 핸드폰 임시 40)
	SetTimer1(500, 1);					//이벤트 이동 시간 간격
	Variable[1] = 1;
	Variable[0] = 200;					//테스트 코드
	SetQuickSlot();						//테스트 코드
}

//******************************************************************************************************[ EVENT_TIMEOUT ]
void EVENT_TIMEOUT(){
	switch(GameMode){
		//타이틀(GameMode=0)
		case 0:	
			if(!swData){
				ClearBlack();
				SetFontType(S_FONT_MEDIUM, S_YELLOW, S_BLACK, S_ALIGN_CENTER);
				DrawStr(120,145,"Press OK, please.");
				SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
				DrawStr(230,276,"by Ahyane");
			}
			break;

		//이동모드(GameMode=1)
		case 1:
			switch(swData){
				//타이머0(t=30)
				case 0:
					//자연스러운 이동 #1
					SetDirection(0, MovingDirection);
					MovePosition(0, MovingDirection);
					//맵 스크롤
					MapScroll();						
					//각 레이어 출력
					DrawSubLayer();			//하위맵 출력
					DrawSupLayer(0);		//상위맵 0단계 출력
					DrawEventLayer();		//주인공 및 이벤트 출력
					DrawSupLayer(1);		//상위맵 1단계 출력

					//이벤트 수행중에
					if(RunningEventNumber >= 0){
						EventObject[RunningEventNumber].EventLoop = 1;
						RunEventLine(RunningEventNumber);
					}
					break;

				//타이머1(t=500)
				case 1:
					MoveEventRandom(0);				//테스트 코드 : 0번 이벤트 랜덤이동
					MoveEventRandom(1);				//테스트 코드 : 1번 이벤트 랜덤이동
					MoveEventRandom(2);				//테스트 코드 : 2번 이벤트 랜덤이동
					MoveEventRandom(3);				//테스트 코드 : 3번 이벤트 랜덤이동
					MoveEventRandom(4);				//테스트 코드 : 4번 이벤트 랜덤이동
					MoveEventRandom(5);				//테스트 코드 : 5번 이벤트 랜덤이동
					break;
			}
			break;

		//메뉴 모드(GameMode=2)
		case 2:
			if(!swData){
				RestoreLCD();
				DrawMenu(MenuPX, MenuPY);
				switch (selected_menu){
					case 0:	DrawState(MenuPX, MenuPY);		break;
					case 1:	DrawEquip(MenuPX, MenuPY);		break;
					case 2:	DrawItem(MenuPX, MenuPY);		break;
					case 3:	DrawSkill(MenuPX, MenuPY);		break;
					case 4:	break;
				}
			}
			break;

		//이벤트수행 모드(GameMode=3)
		case 3:
			RestoreLCD();
			EventObject[RunningEventNumber].EventLoop = 1;
			RunEventLine(RunningEventNumber);
			break;
	}
	
	//인터페이스 출력
	if(GameMode){
		DrawInterface();
	}

	/*/소켓을 통해 수신된 메시지 표시 :: 테스트 코드
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);	
	DrawStr(50,50,RcvdMsg);	//*/

	Flush();
}

//******************************************************************************************************[ EVENT_KEYPRESS ]
void EVENT_KEYPRESS(){
	switch(GameMode){
		//타이틀(GameMode=0)
		case 0:
			switch(swData){
				//타이틀 메뉴선택
				case SWAP_KEY_OK:	ChangeMode(1);	break;
				//타이틀 메뉴변경
				case SWAP_KEY_UP:	break;
				//타이틀 메뉴변경
				case SWAP_KEY_DOWN:	break;
			}
			break;

		//이동모드(GameMode=1)
		case 1:
			switch(swData){
				//정면에 이벤트 실행
				case SWAP_KEY_OK:
					RunningEventNumber = SerchEvent() - 1;
					//이벤트가 있다면 그 이벤트는 나를 볼 것이다
					if(RunningEventNumber >= 0){
						EventObject[RunningEventNumber].direction = (Player.direction + 2) %4;
						ChangeMode(3);
					}
					break;

				//메뉴 출력
				case SWAP_KEY_CLR:
					ChangeMode(2);
					break;
				
				//자연스러운 이동 #1
				case SWAP_KEY_UP:
				case SWAP_KEY_DOWN:
				case SWAP_KEY_LEFT:
				case SWAP_KEY_RIGHT:
				case SWAP_KEY_RELEASE:
				 	MovingDirection = swData;
					break;

				//퀵슬롯 선택
				case SWAP_KEY_1:
				case SWAP_KEY_2:
				case SWAP_KEY_3:
				case SWAP_KEY_4:
				case SWAP_KEY_5:
				case SWAP_KEY_6:
				case SWAP_KEY_7:		break;
				case SWAP_KEY_8:		QuickSlot_VIEW = (QuickSlot_VIEW + 2) % 3;break;
				case SWAP_KEY_9:		break;
				case SWAP_KEY_0:		QuickSlot_VIEW = (QuickSlot_VIEW + 1) % 3;break;
					//UseQuickSlot(swData);
					break;
				case SWAP_KEY_SHARP:	INTER_MSG_LIST_VIEW = (INTER_MSG_LIST_VIEW + 9) % 10;break;
				default:
					break;
			}
			break;

		//메뉴 모드(GameMode=2)
		case 2:
			//입력키에 대한 메뉴선택
			ShowMenu(swData);
			break;

		//이벤트수행 모드(GameMode=3)
		case 3:
			if(RunningEventNumber >= 0)
				NextKey = swData;
			else
				//이동모드로
				ChangeMode(1);
			break;

	}

	/*/네트워크 테스트 코드//
	switch(swData){
		case SWAP_KEY_1:	ConnectSocket();							break;	//네트워크 접속
		case SWAP_KEY_2:	DataMsg = Message[Rand(0, 8)];SendSocket();	break;	//메시지 송신
		case SWAP_KEY_3:	RcvSocket();GetSockBuffer();				break;	//메시지 수신
		case SWAP_KEY_4:	CloseSocket();								break;	//네트워크 종료
		case SWAP_KEY_5:												break;
		case SWAP_KEY_6:												break;
		case SWAP_KEY_7:												break;
		case SWAP_KEY_8:												break;
		case SWAP_KEY_9:												break;
		case SWAP_KEY_0:	SVR_IP = "127.0.0.1";						break;	//아이피 설정->현재컴퓨터
		case SWAP_KEY_STAR:	SVR_IP = "118.37.164.161";					break;	//아이피 설정->인천집
		case SWAP_KEY_SHARP:SVR_IP = "121.188.152.217";					break;	//아이피 설정->자취방
	}//네트워크 테스트 코드/*/

}

//******************************************************************************************************[ EVENT_NETWORK ]
void EVENT_NETWORK(){
	RcvSocket();	//소켓 바로 수신
}

//******************************************************************************************************[ Any Fuction ]
void ChangeMode(int Mode){
	switch(Mode){
		//타이틀로
		case 0:				GameMode = 0;	break;
		//이동모드로
		case 1:				GameMode = 1;	break;
		//메뉴모드로
		case 2:
		//이벤트실행모드로
		case 3:
			DrawSubLayer();			//하위맵 출력
			DrawSupLayer(0);		//상위맵 0단계 출력
			DrawEventLayer();		//주인공 및 이벤트 출력
			DrawSupLayer(1);		//상위맵 1단계 출력
			SaveLCD();
			GameMode = Mode;
			break;
					
		//
		default:							break;
	}
}