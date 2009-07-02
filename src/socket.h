//송신할 데이터 조합 메시지
string DataMsg;

//수신완료된 데이터 메시지
string RcvdMsg;

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
string Sock_Buffer[SVR_BufferSize] = {"", "", "", "", "", "", "", "", "", ""};

/*
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
*/

void ConnectSocket()	//소켓 연결
{
	SendSocket();		//테스트 코드
	Sock_Result = SockSendMedia(Sock_Index, Sock_SendString, 0, Sock_LenSendString);
	if(Sock_Result < 0)
	{
		//Sock_Index = SockOpen(S_NET_SOCK_TCP); //성공 : 0~2, 실패 : -1
		Sock_Result = SockConnect(Sock_Index, SVR_IP, SVR_PORT);
	}
}

void CloseSocket()	//소켓 닫음
{
	Sock_Result = SockClose(Sock_Index);
}

void SendSocket()	//소켓 데이터 송신
{
	StrInit(Sock_SendString, 32);
	StrCpy(Sock_SendString, DataMsg);	//MakeStr1(Sock_SendString,"V[%d]",2);
	Sock_LenSendString = StrLen(Sock_SendString);
	Sock_Result = SockSendMedia(Sock_Index, Sock_SendString, 0, Sock_LenSendString);
}

void RcvSocket(){	//소켓 데이터 수신
	StrInit(Sock_RcvString, 100);
	Sock_LenRcvString = SetMediaSize(Sock_RcvString, 100);
	PutChar(Sock_RcvString, 100, '\0');
	Sock_Result = SockRecvMedia(Sock_Index, Sock_RcvString, 0, 100);
	if(StrLen(Sock_RcvString) != 0 && Sock_BufferFront != Sock_BufferRear + 1)		//버퍼에 저장
	{
		StrCpy(Sock_Buffer[Sock_BufferRear],Sock_RcvString);
		Sock_BufferRear = (Sock_BufferRear + 1) % SVR_BufferSize;
	}
}

void GetSockBuffer()	//버퍼 꺼내기
{
	if(StrLen(Sock_Buffer[Sock_BufferFront]) != 0)
	{
		StrCpy(RcvdMsg, Sock_Buffer[Sock_BufferFront]);	//임시문자열에 저장
		StrCpy(Sock_Buffer[Sock_BufferFront], "");
		Sock_BufferFront = (Sock_BufferFront + 1) % SVR_BufferSize;
	}
}
