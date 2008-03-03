/*/////////////////////////////////////////////////////////////////////////
main.mc - Auto Created by GNEX IDE
-시작:        : 기존 작성하던 프로젝트를 개선하기위해 작성한 소스를 참고하여 코드를 다시 작성
연습8일 + 
1일차: 2월29일 : 새 프로젝트 생성, 맵출력 및 케릭터 이동 구현, 문장출력구현 라인경계에서 한글깨짐, 이동 및 변수스위치조작등 기타이벤트 구현중
2일차: 3월 1일 : 조건분기 구현, 선택지 구현 중, 이벤트 목록 수행 구현, 딜레이 구현, 맵 에디터 프로그램 제작VB(2개 레이어 맵)
3일차: 3월 2일 : 맵 에디터 프로그램 제작VB, 맵 출력 레이어 2개로 출력, 맵 칩 수집
4일차: 3월 3일 : 맵 칩 수집, 맵 에디터 부분 제작 완료(저장/로드 가능), 이동금지 칩 범위 및 조건줄 수정, 프로그램에서 작성한 맵 게임에서 테스트(케릭터 사이즈 최대 수직 2개 셀로 설정 요망)

5일차: 3월 4일 : 예정 >> 이벤트 스크립트 함수 보완 요망


/////////////////////////////////////////////////////////////////////////*/

#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	60000
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"ahyane GVM2X App"
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
	#DEFINE APPCPID		60000
	#DEFINE APPID		1
	#DEFINE APPNAME		"ahyane GNEX App"
	#DEFINE COMPTYPE	0
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include "mapchip.sbm"
#include "chara.h"
#include "mapdata.h"
#include "map.h"
#include "event.h"
#include "item.h"
#include "monster.h"
#include "skill.h"

void main()
{
	//mode: title, play(move), battle, event, menu(item,skill,status,.....)
	SetArea();
	SetTimer(18, 1);
	Variable[0] = 142;					//테스트 코드
	EventObject[0].EventLoop = 2;		//테스트 코드
	EventObject[0].EventPage = 0;		//테스트 코드
	EventObject[0].LineCount = 0;		//테스트 코드
}

void EVENT_TIMEOUT(){
	//ClearBlack();
	MapScroll();				//맵 스크롤
	DrawSubLayer();				//하위맵 출력
	DrawSupLayer(0);			//상위맵 0단계 출력
	DrawPlayer();				//주인공 출력
	DrawSupLayer(1);			//상위맵 1단계 출력
	RunEventLine(0);					//테스트 코드
	Flush();
}

void EVENT_KEYPRESS(){
	if(swData == SWAP_KEY_RELEASE) return;
	MovePosition(0, swData);
}