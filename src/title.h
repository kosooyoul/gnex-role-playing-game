#include "logo.sbm"

void DrawTitle(){
	ShowIcon();
}

void ControlTitle(int swData){
	ControlIcon(swData);
}

//메뉴 선택 번호
int Status_Select[3] = {0,0,0};

//진행 변수(애니매이션장면번호, 타이머시간, 각도, 투명도 등)
int Status_Value[6] = {0,0,0,0,0,0};

//진행 변수 초기화
void InitStatusValue(){
	//진행 변수
	Status_Value[0] = 0;	//지정->애니매이션 및 장면 번호
	Status_Value[1] = 0;	//지정->현재 카운터 값(계속 증가)
	Status_Value[2] = 0;	//지정->최대 카운터 값(도달 되면 다음 장면으로)
	Status_Value[3] = 0;
	Status_Value[4] = 0;
	Status_Value[5] = 0;
	//메뉴 선택 번호	
	Status_Select[0] = 0;
	Status_Select[1] = 0;
	Status_Select[2] = 0;
	return;
}



//메뉴 선택 표시 스크롤
int Scroll_ShowCounter = 0;

//타이머 작동
void PlayTimer(int *In_Status){
	//if(Status_Value[1] >= Status_Value[2] && Status_Value[2] != -1){
	if(*(In_Status + 1) >= *(In_Status + 2) && *(In_Status + 2) != -1){
		//다음 장면으로 이동
		*(In_Status + 1) = 0;	//Status_Value[1] = 0;
		*(In_Status) += 1;		//Status_Value[0]++;
	}else{
		//타이머 증가
		*(In_Status + 1) += 1;	//Status_Value[1]++;
	}
	return;
}

void ControlMoveFrame(int FrameName){
	Status_Value[1] = 0;
	Status_Value[0] = FrameName;
}

void ControlIcon(int SysData){
	switch(SysData){
		case SWAP_KEY_OK:
			//스킵1
			if(Status_Value[0] < 6){
				ControlMoveFrame(6);
			//스킵2
			}else if(Status_Value[0] < 11){
				ControlMoveFrame(11);
			}
	}
	return;
}

/*
	Status_Value[0] : 애니매이션 장면 번호 [조건:Status_Value[1] == N 일 경우 증가]
		0 ~ End - 1	> 애니매이션 및 장면 출력
		End			> 다음 모드로

	Status_Value[1] : 타이머 [조건:0 이상 일 경우 증가]
		-1			> 작동 안함
		0 ~ N - 1	> 카운터 값 증가
		N			> 카운터 값 초기화

	Status_Value[2] : 해당 장면의 최대 카운터 [조건:Status_Value[1] == 0 일 경우 설정]
	Status_Value[3] : 이미지의 투명도 값
*/
void ShowIcon(){
	ClearWhite();

	//장면의 프레임수 결정
	if(Status_Value[1] == 0){
		switch(Status_Value[0]){
			case 0:		Status_Value[2] = 10;		break;//+1
			case 1:		Status_Value[2] = 10;		break;//+2
			case 2:		Status_Value[2] = 10;		break;//+3
			case 3:		Status_Value[2] = 10;		break;//+4
			case 4:		Status_Value[2] = 10;		break;//+5
			case 5:		Status_Value[2] = 10;		break;//BLINK
			case 6:		Status_Value[2] = 40;		break;//+URL
			case 7:		Status_Value[2] = 10;		break;//-URL
			case 8:		Status_Value[2] = 10;		break;//+6
			case 9:		Status_Value[2] = 10;		break;//-N
			case 10:	Status_Value[2] = 10;		break;//NO
			case 11:	Status_Value[2] = 10;		break;//FADEOUT
		}
	}
	
	//장면 출력
	switch(Status_Value[0]){
		case 0:
			GetAnimationPosition(56,-66, 106, 134, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_ZigZagGourd, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage(106, 134, logo_img);//1
			break;

		case 1:
			CopyImage(106, 134, logo_img);//1
			GetAnimationPosition(40,-58, 90, 142, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_RightGourd, 50);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 90, 142, logo_img);//2
			break;

		case 2:
			GetAnimationPosition(24,-66, 74, 134, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_LeftGourd, 80);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 74, 134, logo_img);//3
			CopyImage(106, 134, logo_img);//1
			GetAnimationPosition(88,-66, 138, 134, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_LeftGourd, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			break;

		case 3:
			GetAnimationPosition(40,-90, 90, 110, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_ZigZagGourd, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 90, 110, logo_img);//4
			GetAnimationPosition(56,-82, 106, 118, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_LeftGourd, 40);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage(106, 118, logo_img);//4
			CopyImage( 74, 134, logo_img);//3
			CopyImage(106, 134, logo_img);//1
			CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			break;

		case 4:
			CopyImage( 90, 110, logo_img);//4
			GetAnimationPosition(24,-82, 74, 118, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_RightGourd, 30);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 74, 118, logo_img);//5
			CopyImage(106, 118, logo_img);//4
			GetAnimationPosition(72,-74, 122, 126, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_LeftGourd, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage(122, 126, logo_img);//5
			CopyImage( 74, 134, logo_img);//3
			CopyImage(106, 134, logo_img);//1
			CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			GetAnimationPosition(56,-50, 106, 150, Status_Value[1], Status_Value[2], Movement_FadeOut, 1, Guide_ZigZagGourd, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage(106, 150, logo_img);//5
			break;
		case 5:
			if(Status_Value[1] % 3 < 2){
				CopyImage( 90, 110, logo_img);//4
				CopyImage( 74, 118, logo_img);//5
				CopyImage(106, 118, logo_img);//4
				CopyImage(122, 126, logo_img);//5
				CopyImage( 74, 134, logo_img);//3
				CopyImage(106, 134, logo_img);//1
				CopyImage(138, 134, logo_img);//3
				CopyImage( 90, 142, logo_img);//2
				CopyImage(106, 150, logo_img);//5
			}
			break;

		case 6:
			CopyImage( 90, 110, logo_img);//4
			CopyImage( 74, 118, logo_img);//5
			CopyImage(106, 118, logo_img);//4
			CopyImage(122, 126, logo_img);//5
			CopyImage( 74, 134, logo_img);//3
			CopyImage(106, 134, logo_img);//1
			CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			CopyImage(106, 150, logo_img);//5
			if(Status_Value[1] < 3) Status_Value[3] = 3;
			else if(Status_Value[1] < 6) Status_Value[3] = 2;
			else if(Status_Value[1] < 9) Status_Value[3] = 1;
			else Status_Value[3] = 0;
			CopyImageEx(swWidth / 2, 190, logo_str, Status_Value[3], 0, 0, 0);
			break;

		case 7:
			CopyImage( 90, 110, logo_img);//4
			CopyImage( 74, 118, logo_img);//5
			CopyImage(106, 118, logo_img);//4
			CopyImage(122, 126, logo_img);//5
			CopyImage( 74, 134, logo_img);//3
			CopyImage(106, 134, logo_img);//1
			CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			CopyImage(106, 150, logo_img);//5
			if(Status_Value[1] < 3) Status_Value[3] = 1;
			else if(Status_Value[1] < 6) Status_Value[3] = 2;
			else if(Status_Value[1] < 9) Status_Value[3] = 3;
			else Status_Value[3] = 0;
			if(Status_Value[3] > 0){
				CopyImageEx(swWidth / 2, 190, logo_str, Status_Value[3], 0, 0, 0);
			}
			break;

		case 8:
			CopyImage( 90, 110, logo_img);//4
			CopyImage( 74, 118, logo_img);//5
			CopyImage(106, 118, logo_img);//4
			CopyImage(122, 126, logo_img);//5
			CopyImage( 74, 134, logo_img);//3
			CopyImage(106, 134, logo_img);//1
			CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			CopyImage(106, 150, logo_img);//5
			GetAnimationPosition(89,-104, 90, 96, Status_Value[1], Status_Value[2], Movement_FadeIn, 2, Guide_Straight, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 90, 96, logo_img);//6
			break;

		case 9:
			GetAnimationPosition(90,134, 95, 310, Status_Value[1], Status_Value[2], Movement_FadeOut, 4, Guide_Straight, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 90, 310, logo_img);//4
			GetAnimationPosition(90, 96, 91, 300, Status_Value[1], Status_Value[2], Movement_FadeIn, 3, Guide_Straight, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 90,  96, logo_img);//6
			GetAnimationPosition(74,134, 70, 318, Status_Value[1], Status_Value[2], Movement_FadeOut, 3, Guide_Straight, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage( 74, 318, logo_img);//5
			CopyImage(106, 118, logo_img);//4
			CopyImage(122, 126, logo_img);//5
			CopyImage( 74, 134, logo_img);//3
			GetAnimationPosition(106,134, 110, 334, Status_Value[1], Status_Value[2], Movement_FadeOut, 2, Guide_Straight, 20);
			CopyImage(UnitReturnPosition.X, UnitReturnPosition.Y, logo_img);
			//CopyImage(106, 334, logo_img);//1
			CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			CopyImage(106, 150, logo_img);//5
			break;

		case 10:
			CopyImage(106, 118, logo_img);//4
			CopyImage(122, 126, logo_img);//5
			CopyImage( 74, 134, logo_img);//3
			CopyImage(138, 134, logo_img);//3
			CopyImage( 90, 142, logo_img);//2
			CopyImage(106, 150, logo_img);//5
			break;

		case 11:
			if(Status_Value[1] < 3) Status_Value[3] = 1;
			else if(Status_Value[1] < 6) Status_Value[3] = 2;
			else if(Status_Value[1] < 9) Status_Value[3] = 3;
			else Status_Value[3] = 0;
			if(Status_Value[3] > 0){
				CopyImageEx(106, 118, logo_img, Status_Value[3], 0, 0, 0);//4
				CopyImageEx(122, 126, logo_img, Status_Value[3], 0, 0, 0);//5
				CopyImageEx( 74, 134, logo_img, Status_Value[3], 0, 0, 0);//3
				CopyImageEx(138, 134, logo_img, Status_Value[3], 0, 0, 0);//3
				CopyImageEx( 90, 142, logo_img, Status_Value[3], 0, 0, 0);//2
				CopyImageEx(106, 150, logo_img, Status_Value[3], 0, 0, 0);//5
			}
			break;

		case 12:
			InitStatusValue();

			ChangeMode(1);
			return;
	}

	PlayTimer(Status_Value);
}