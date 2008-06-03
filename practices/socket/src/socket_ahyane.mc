///////////////////////////////////////////////////////////////////////////
// socket_ahyane.mc - Auto Created by GNEX IDE
///////////////////////////////////////////////////////////////////////////

#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	60000
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"소켓통신연습 GVM2X App"
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
	#DEFINE APPNAME		"소켓통신연습 GNEX App"
	#DEFINE COMPTYPE	0
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#define	SVR_IP	"127.0.0.1"//"121.188.152.217"
#define	SVR_PORT	20001
#define SVR_BufferSize	10

//소켓 연결
int Sock_Index;
int Sock_Result;

//송수신 데이터
int Sock_LenSendString;
int	Sock_LenRcvString;
string Sock_SendString;
string Sock_RcvString = "";

//수신 데이터 버퍼 관련
int Sock_BufferFront = 0;
int Sock_BufferRear = 0;
string Sock_Buffer[SVR_BufferSize]={"","","","","","","","","",""};

int i;


void main(){
	SetTimer(300,1);
}



void EVENT_TIMEOUT(){
	ClearBlack();
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	GetSockBuffer();
	Flush();
}

void EVENT_KEYPRESS(){
	switch(swData)
	{
		case SWAP_KEY_CLR:
			RcvSocket();
			Flush();
			break;

		case SWAP_KEY_OK:
			SendSocket();
			break;			

		case SWAP_KEY_LEFT:
			i=Sock_BufferFront;
			break;
		case SWAP_KEY_RIGHT:
			i=Sock_BufferRear;
			break;

		case SWAP_KEY_UP:
			OpenSocket();
			break;
		case SWAP_KEY_DOWN:
			CloseSocket();
			break;
		default:

			break;
	}
}

void EVENT_NETWORK(){
	RcvSocket();	//바로 수신
}

void OpenSocket(){	//소켓 연결
	Sock_Result = SockSendMedia(Sock_Index, Sock_SendString, 0, Sock_LenSendString);
	if(Sock_Result < 0) {
		Sock_Index = SockOpen(S_NET_SOCK_TCP); //성공 : 0~2, 실패 : -1
		Sock_Result = SockConnect(Sock_Index, SVR_IP, SVR_PORT);
	}
}

void CloseSocket(){	//소켓 닫음
	SockClose(Sock_Index);
}

void SendSocket(){
	StrInit(Sock_SendString, 32);
	MakeStr1(Sock_SendString,"V[%d]",i);
	Sock_LenSendString = StrLen(Sock_SendString);
	Sock_Result = SockSendMedia(Sock_Index, Sock_SendString, 0, Sock_LenSendString);
}

void RcvSocket(){	//소켓 데이터 수신
	StrInit(Sock_RcvString, 32);
	Sock_LenRcvString = SetMediaSize(Sock_RcvString, 20);
	PutChar(Sock_RcvString, 20, '\0');
	Sock_Result = SockRecvMedia(Sock_Index, Sock_RcvString, 0, 20);
	if(StrLen(Sock_RcvString) != 0 && Sock_BufferFront != Sock_BufferRear + 1){		//버퍼에 저장
		StrCpy(Sock_Buffer[Sock_BufferRear],Sock_RcvString);
		Sock_BufferRear = (Sock_BufferRear + 1) % SVR_BufferSize;
	}
}

void GetSockBuffer(){	//버퍼 꺼내기
	if(StrLen(Sock_Buffer[Sock_BufferFront]) != 0){
		DrawStr(30,150,Sock_Buffer[Sock_BufferFront]);    //수신명령문 실행
		StrCpy(Sock_Buffer[Sock_BufferFront], "");
		Sock_BufferFront = (Sock_BufferFront + 1) % SVR_BufferSize;
	}
}
