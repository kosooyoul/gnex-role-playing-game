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
 6일차: 2월 1일 : 이벤트발생 테스트:접근해서 버튼 누를때,대화창 표시 테스트.. 한줄 짤막.
 7일차: 2월 2일 : 구현한 소스 정리 및 테스트
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



**이벤트 함수 추가요망(상점)
**전투시스템:필드턴제시뮬레이션, 어스토니시아스토리
**모두 세분화


*/


#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	19732		//테스트 고유번호
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"AHYANET RPG ^o^!!"
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
	#DEFINE APPNAME		"AHYANET RPG ^o^!!"	//프로그램 이름
	#DEFINE COMPTYPE	0
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include "mapchip.sbm"		//* s구성화면 칩 로드
#include "define.h"			//*! 정의목록
#include "chara.h"			//   주인공
#include "mapdata.h"		//*  맵데이터
#include "map.h"			//   맵표시
#include "event.h"			//   이벤트
#include "eventscript.h"	//   이벤트처리
#include "item.h"			//*  아이템
#include "monster.h"		//*  몬스터
#include "skill.h"			//*  스킬
#include "interface.h"		//   인터페이스
#include "socket.h"			// ! 소켓

int MovingDirection = 0;
int RunningEventNumber = -1;	//RunningEventNumber번째의 이벤트를 수행, -1은 아무것도 수행안함
int NextKey = -1;				//이벤트 수행중 키입력을 기다리기 위함
int GameMode = 0;				//게임 모드/ 0:타이틀, 1:롤플레이

void main()
{
	//mode: title, play(move), battle, event, menu(item,skill,status,.....)
	SetArea();
	SetEvent();
	SetTimer(30, 1);					//이동 및 맵 출력 시간 간격, 이벤트 수행 속도
	SetTimer1(1000, 1);					//이벤트 이동 시간 간격

	Variable[0] = 200;					//테스트 코드
}

void EVENT_TIMEOUT(){

	switch(GameMode){
		case 0:	//타이틀
			CopyImage(0, 0, title);
			break;

		case 1: //롤플레이
			switch(swData)
			{
				case 0:	
					SetDirection(0, MovingDirection);
					MovePosition(0, MovingDirection);	//자연스러운 이동 #1
					MapScroll();						//맵 스크롤
					DrawSubLayer();						//하위맵 출력
					DrawSupLayer(0);					//상위맵 0단계 출력
					DrawEventLayer();					//주인공 및 이벤트 출력
					DrawSupLayer(1);					//상위맵 1단계 출력
					if(RunningEventNumber >= 0)			//이벤트 수행부분
					{
						EventObject[RunningEventNumber].EventLoop = 1;
						RunEventLine(RunningEventNumber);
					}
					DrawInterface();					//인터페이스 출력
					break;
				case 1:
					if(RunningEventNumber < 0)			//이벤트 이동
					{
						MoveEventRandom(0);				//테스트 코드
						MoveEventRandom(1);				//테스트 코드
					}
			}
			break;
	}
	Flush();
}

void EVENT_KEYPRESS(){

	switch(GameMode){
		case 0:
			switch(swData){
				case SWAP_KEY_OK:
					GameMode = 1;
					break;
				case SWAP_KEY_UP:
					break;
				case SWAP_KEY_DOWN:
					break;
			}
		case 1:
			//if(swData == SWAP_KEY_RELEASE) return;
			if(RunningEventNumber < 0)MovingDirection = swData;			//자연스러운 이동 #1
			if(swData == SWAP_KEY_OK){
				if(RunningEventNumber < 0){
					RunningEventNumber = SerchEvent() - 1;
					EventObject[RunningEventNumber].direction = (Player.direction + 2) %4;
				}
				else NextKey = SWAP_KEY_OK;
			}else NextKey = swData;
	}
}

void EVENT_NETWORK(){
	RcvSocket();	//소켓 바로 수신
}
