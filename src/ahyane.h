void DrawMultiLineText(int *text, int leftMargin, int rightMargin, int top, int lineHeight){
        int font_width, font_num;                // 한 폰트의 길이, 한 줄에 가능한 글자 수
        int first_pos = 0;                                // 각 문장의 처음 위치
        int empty_pos = 0;                                // 문장의 마지막 위치
        int all_size = StrLen(text);        // 주어진 문장 전체 길이
        string str_div;                                        // 잘린 문자열
        int i, j;

        font_width = GetFontWidth();        // 한 폰트의 길이
                                                                        //여백을 뺀 공간에 들어가는 글자수
        font_num = (swWidth - leftMargin - rightMargin) / font_width;

        while(1){
                StrSub(str_div, text, first_pos, first_pos + font_num);
                for(i = 0; i < font_num;){
                        if(GetChar(str_div, i) & 0x80){                // 한글은 첫 bit가 1 (음수형태)
                                if(i + 1 == font_num) break;        // 한글이 문장 마지막에 걸칠 경우
                                else i += 2;
                        }else i++;
                        empty_pos = i;                                                // 문장의 마지막 위치 값을 입력
                }
                StrSub(str_div, text, first_pos, empty_pos);

                if(first_pos >= all_size) break;                // while(1) 종료 조건 (전체 글자 모두 출력되면)

                DrawStr(leftMargin, top, str_div);

                first_pos += empty_pos;                                        //다음줄 계산
                top += lineHeight;
        }
        //return top;                                                //다음 텍스트가 올 위치를 반환
}


/*
	PushStone에 사용할 애니매이션 및 이펙트 관련
	by www.Ahyane.net ^^*
*/

//-------------------- 변경 없을 정의 --------------------//
//운동 타입
#define Movement_Straight	0
#define Movement_FadeIn		1
#define Movement_FadeOut	2
#define Movement_Circular	3

//경로 타입
#define Guide_Straight		0
#define Guide_LeftCurve		1
#define Guide_RightCurve	2
#define Guide_ZigZagCurve	3
#define Guide_LeftGourd		4
#define Guide_RightGourd	5
#define Guide_ZigZagGourd	6
#define Guide_LeftEdge		7
#define Guide_RightEdge		8

//반환 포인트
struct Position{
	int X;
	int Y;
}UnitReturnPosition, UnitRotated;

//해당 프레임의 애니매이션 좌표를 구함
void GetAnimationPosition(int StartX, int StartY, int EndX, int EndY, int CurrentFrame, int TotalFrame
						, int MovementType, int MovementDgree, int GuideType, int GuideDgree){
	struct Position TempPoint;
	int Length;
	int Angle;
	int i;

	//Straight-Straight
	if(MovementType == Movement_Straight && GuideType == Guide_Straight){
		UnitReturnPosition.X = StartX + (EndX - StartX) * CurrentFrame / TotalFrame;
		UnitReturnPosition.Y = StartY + (EndY - StartY) * CurrentFrame / TotalFrame;
		return;
	}
	
	//Other	
	Angle = GetAngle(StartX, StartY, EndX, EndY);
	Length = Sqrt(((EndX - StartX) * (EndX - StartX) + (EndY - StartY) * (EndY - StartY)));

	//속도선택
	switch(MovementType){
		case Movement_Straight:
			TempPoint.X = (Length) * CurrentFrame / TotalFrame;
			break;

		case Movement_FadeIn:
			TempPoint.X = (Length) * CurrentFrame / TotalFrame;
			for(i = 0; i < MovementDgree; i++){
				TempPoint.X = TempPoint.X * CurrentFrame / TotalFrame;
			}
			break;

		case Movement_FadeOut:
			TempPoint.X = (Length) * (TotalFrame - CurrentFrame) / TotalFrame;
			for(i = 0; i < MovementDgree; i++){
				TempPoint.X = TempPoint.X * (TotalFrame - CurrentFrame) / TotalFrame;
			}
			TempPoint.X = Length - TempPoint.X;
			break;
		
		case Movement_Circular:
			TempPoint.X = (Length) * Sin100(90 * CurrentFrame / TotalFrame) / 100;
			for(i = 0; i < MovementDgree; i++){
				TempPoint.X = TempPoint.X * Sin100(90 * CurrentFrame / TotalFrame) / 100;
			}
			break;
	}

	//경로선택
	switch(GuideType){
		case Guide_Straight:
			TempPoint.Y = 0;
			break;
		
		case Guide_LeftCurve:
			TempPoint.Y = Sin100(180 * TempPoint.X / Length) * GuideDgree / 100;
			break;

		case Guide_RightCurve:
			TempPoint.Y = -Sin100(180 * TempPoint.X / Length) * GuideDgree / 100;
			break;

		case Guide_ZigZagCurve:
			TempPoint.Y = Sin100(360 * TempPoint.X / Length) * GuideDgree / 100;
			break;

		case Guide_LeftGourd:
			TempPoint.Y = Sin100(180 * CurrentFrame / TotalFrame) * GuideDgree / 100;
			break;

		case Guide_RightGourd:
			TempPoint.Y = -Sin100(180 * CurrentFrame / TotalFrame) * GuideDgree / 100;
			break;

		case Guide_ZigZagGourd:
			TempPoint.Y = Sin100(360 * CurrentFrame / TotalFrame) * GuideDgree / 100;
			break;

		case Guide_LeftEdge:
			TempPoint.Y = Length - Abs(Length - TempPoint.X * 2);
			break;
		
		case Guide_RightEdge:
			TempPoint.Y = - Length + Abs(Length - TempPoint.X * 2);
			break;
	}

	GetRotatePoint(TempPoint.X, TempPoint.Y, Angle);
	UnitReturnPosition.X = StartX + UnitRotated.X;
	UnitReturnPosition.Y = StartY + UnitRotated.Y;
	
	return;
}

//포인트 회전위치
void GetRotatePoint(int X, int Y, int Angle){
	UnitRotated.X = (X * Sin100(Angle)/100 + Y * Cos100(Angle)/100);
	UnitRotated.Y = (X * Cos100(Angle)/100 - Y * Sin100(Angle)/100);
}

//두 점에 대한 각도 구하기
int GetAngle(int BaseX, int BaseY, int TargetX, int TargetY){
	int Length;
	int Angle;

	if(BaseX < TargetX && BaseY == TargetY){
		return 0;
	}else if(BaseX == TargetX && BaseY < TargetY){
		return 90;
	}else if(BaseX > TargetX && BaseY == TargetY){
		return 180;
	}else if(BaseX == TargetX && BaseY > TargetY){
		return 270;
	}else if(BaseX == TargetX && BaseY == TargetY){
		return Null;
	}else{
		Length = Sqrt(((TargetX - BaseX) * (TargetX - BaseX) + (TargetY - BaseY) * (TargetY - BaseY)) *100);

		if(Length < 256){
			Angle = Abs(ArcSin100((TargetY - BaseY) * 1000 / Length));
		}else{
			Length = Sqrt((TargetX - BaseX) * (TargetX - BaseX)	+ (TargetY - BaseY) * (TargetY - BaseY));
			Angle = Abs(ArcSin100((TargetY - BaseY) * 100 / Length));
		}

		//2사분면
		if(BaseX > TargetX && BaseY < TargetY){
			Angle = Angle - 90;
		//3사분면
		}else if(BaseX > TargetX && BaseY > TargetY){
			Angle = -90 - Angle;
		//4사분면
		}else if(BaseX < TargetX && BaseY > TargetY){
			Angle = Angle - 270;
		//1사분면
		}else{
			Angle = 90 - Angle;
		}
		return Angle;
	}
}

//*
//도형 회전
void RotatePolygon(int *VX, int *VY, int AngleX, int AngleY, int AngleZ, int DgreeX, int DgreeY, int Spread){
	int TX[4], TY[4];
	int UX, UY;
	int DX, DY;
	int VEdge = sizeof(VX);
	int i;

	for(i = 0; i < VEdge; i++){
		UX = *(VX+i) + Spread;
		UY = *(VY+i) + Spread;
		DX = (UX * Sin100(AngleZ)/100 + UY * Cos100(AngleZ)/100);
		DY = (UX * Cos100(AngleZ)/100 - UY * Sin100(AngleZ)/100);
		
		UX = (DX * Sin100(AngleX)/100 + DY * Cos100(AngleX)/100);

		DY = (UX * Cos100(AngleY)/100 - UY * Sin100(AngleY)/100);

		
		TX[i] = DX + DgreeX;
		TY[i] = DY + DgreeY;
	}
	FillPoly(TX, TY, VEdge);		
}