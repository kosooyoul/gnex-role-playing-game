/*/////////////////////////////////////////////////////////////////////////
main.mc - Auto Created by GNEX IDE
-시작:        : 기존 작성하던 프로젝트를 개선하기위해 작성한 소스를 참고하여 코드를 다시 작성
연습8일 + 
1일차: 2월29일 : 새 프로젝트 생성, 맵출력 및 케릭터 이동 구현, 문장출력구현 라인경계에서 한글깨짐, 이동 및 변수스위치조작등 기타이벤트 구현중
2일차: 3월 1일 : 조건분기 구현, 선택지 구현 중, 이벤트 목록 수행 구현, 딜레이 구현, 맵 에디터 프로그램 제작VB(2개 레이어 맵)
3일차: 3월 2일 : 맵 에디터 프로그램 제작VB, 맵 출력 레이어 2개로 출력, 맵 칩 수집
4일차: 3월 3일 : 맵 칩 수집, 맵 에디터 부분 제작 완료(저장/로드 가능), 이동금지 칩 범위 및 조건줄 수정, 프로그램에서 작성한 맵 게임에서 테스트(케릭터 사이즈 최대 수직 2개 셀로 설정 요망)
5일차: 3월 4일 : 케릭터 이동 부분 개선, 이벤트 함수 보완(문장 조합), 이벤트 화면출력 및 이동 테스트(문제점:다른 이벤트와도 주인공과도 겹침/->해결), 맵 데이터에 이벤트 레이어 추가
6일차: 3월 5일 : 이벤트 실행 구현, 문장 출력시 대기하도록 구현, 맵 이동 확인,이동 후 맵 밖에서 이벤트 출력 안되도록 버그 수정, 케릭터 그래픽 적용및 그래픽 사이즈 변경, 이벤트 라인 1차원 배열로 변경
7일차: 3월 6일 : 케릭터이동 함수에서 방향전환 분리, 이벤트 편집기 제작 중VB
8일차: 3월 7일 : 이벤트 편집기 제작 중VB, 삼성 SCH-W290 기기에 프로그램 다운로드하여 테스트(속도 테스트 >> 케릭터 30셀 이동:기기-약 8초경과, 컴퓨터-약 4.5초경과//표시하는 화면에 비해 디스플레이가 큼>사이즈 176*205)->반복문에서 수행되는 계산 부분 줄이고 한화면에 표시되는 셀수를 늘림, 주인공이 키입력도중 이벤트가 접근할 경우 겹치던 현상 해결
9일차: 3월 8일 : **이벤트 함수 추가요망(상점, 선택지 등)

/////////////////////////////////////////////////////////////////////////*/

#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	19732		//테스트 고유번호
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"AHYANET ^o^"
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
	#DEFINE APPCPID		19732		//테스트 고유번호
	#DEFINE APPID		10001		//프로그램 ID
	#DEFINE APPNAME		"AHYANET ^o^!!"	//프로그램 이름
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
#include "eventscript.h"
#include "item.h"
#include "monster.h"
#include "skill.h"
#include "interface.h"

int MovingDirection = 0;
int RunningEventNumber = -1;	//RunningEventNumber번째의 이벤트를 수행, -1은 아무것도 수행안함
int NextKey = 0;				//이벤트 수행중 키입력을 기다리기 위함

void main()
{
	//mode: title, play(move), battle, event, menu(item,skill,status,.....)
	SetArea();
	SetEvent();
	SetTimer(30, 1);
	SetTimer1(1000, 1);
	Variable[0] = 2;					//테스트 코드
}

void EVENT_TIMEOUT(){
	switch(swData){
	case 0:	
		SetDirection(0, MovingDirection);
		MovePosition(0, MovingDirection);	//자연스러운 이동 #1
		MapScroll();				//맵 스크롤
		DrawSubLayer();				//하위맵 출력
		DrawSupLayer(0);			//상위맵 0단계 출력
		DrawEventLayer();			//주인공 및 이벤트 출력
		DrawSupLayer(1);			//상위맵 1단계 출력

		//이벤트 수행부분
		if(RunningEventNumber >= 0)
		{
			EventObject[RunningEventNumber].EventLoop = 1;
			RunEventLine(RunningEventNumber);
		}

		DrawInterface();			//인터페이스 출력
		break;
	case 1:
		if(RunningEventNumber < 0)
		{
			MoveEventRandom(0);					//테스트 코드
			MoveEventRandom(1);					//테스트 코드
		}
	}

	Flush();
}

void EVENT_KEYPRESS(){
	//if(swData == SWAP_KEY_RELEASE) return;

	if(RunningEventNumber < 0)MovingDirection = swData;			//자연스러운 이동 #1

	if(swData == SWAP_KEY_OK)
	{
		if(RunningEventNumber < 0)
		{
			RunningEventNumber = SerchEvent() - 1;
			EventObject[RunningEventNumber].direction = (Player.direction + 2) %4;
		}
		else NextKey = 1;
	}
}