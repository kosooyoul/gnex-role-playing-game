int ScrollMapX = 0;
int ScrollMapY = 0;

struct Map{
	string name;
	int x_start, y_start;
	int x_size, y_size;
	int backchip;			//배경 맵칩
}Area[MAX_AREA_COUNT];

//맵 영역 설정
void SetArea(){
	Area[0].name = "VILLAGE";
	Area[0].x_start = 0;
	Area[0].y_start = 0;
	Area[0].x_size = 23;
	Area[0].y_size = 23;
	Area[0].backchip = 85;		//풀밭142 검정85 자갈바닥58

	Area[1].name = "HOUSE";
	Area[1].x_start = 23;//20;
	Area[1].y_start = 0;//30;
	Area[1].x_size = 17;//9;
	Area[1].y_size = 15;//11;
	Area[1].backchip = 85;		//풀밭142 검정85 자갈바닥58
	
	Area[2].name = "HOUSE";
	Area[2].x_start = 23;//20;
	Area[2].y_start = 15;//30;
	Area[2].x_size = 17;//9;
	Area[2].y_size = 12;//11;
	Area[2].backchip = 85;		//풀밭142 검정85 자갈바닥58

	Area[3].name = "ITEM SHOP";
	Area[3].x_start = 23;//20;
	Area[3].y_start = 27;//30;
	Area[3].x_size = 17;//9;
	Area[3].y_size = 13;//11;
	Area[3].backchip = 85;		//풀밭142 검정85 자갈바닥58

	Area[4].name = "WEST FIELD";	//(38, 8) : 시작위치1, (39, 8) : 이동 이벤트 발생
	Area[4].x_start = 0;
	Area[4].y_start = 40;
	Area[4].x_size = 40;
	Area[4].y_size = 20;
	Area[4].backchip = 85;

	Area[5].name = "NORTH FIELD";
	Area[5].x_start = 0;
	Area[5].y_start = 0;
	Area[5].x_size = 0;
	Area[5].y_size = 0;
	Area[5].backchip = 85;
}

//맵 스크롤
void MapScroll(){
	if(ScrollMapX)
	{
		if(ScrollMapX>0){
			ScrollMapX-=Player.Movement;
			//ScrollLCD(1,-5, 0, 0);
			if(ScrollMapX < 0) ScrollMapX = 0;
		}else{
			ScrollMapX+=Player.Movement;
			//ScrollLCD(1, 5, 0, 0);
			if(ScrollMapX > 0) ScrollMapX = 0;
		}
		//UpdateBuffer();
		
	}
	else if(ScrollMapY)
	{
		if(ScrollMapY>0){
			ScrollMapY-=Player.Movement;
			//ScrollLCD(1, 0,-5, 0);
			if(ScrollMapY < 0) ScrollMapY = 0;
		}else{
			ScrollMapY+=Player.Movement;
			//ScrollLCD(1, 0, 5, 0);
			if(ScrollMapY > 0) ScrollMapY = 0;
		}
		//UpdateBuffer();
	}
	
}

//하위 맵 그리기 - 주인공보다 하위 맵
void DrawSubLayer(){
	int x, y;
	int TempPX;
	int TempPY;


	for(x=-1;x<16;x++)
	{
		TempPX = Player.x - _PlayerPosition + x;
		for(y=0;y<15;y++)
		{
			TempPY = Player.y - _PlayerPosition + y;
			if(TempPX >= 0 && TempPY >= 0 && TempPX < Area[Player.map].x_size && TempPY  < Area[Player.map].y_size)
				CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, subchip[SubLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX]]);
			else
				CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, subchip[Area[Player.map].backchip]);
		}
	}
}

//상위 맵 그리기 - 맵 번호에 따라 바닥 / 장애물 / 천장이나 하늘로 출력
void DrawSupLayer(int Level){
	int x, y;
	int TempPX;
	int TempPY;
	int TempChipNum;

	
	if(Level == 0){			//바닥, 벽
		for(x=-1;x<16;x++)
		{
			TempPX = Player.x - _PlayerPosition + x;
			for(y=0;y<15;y++)
			{
				TempPY = Player.y - _PlayerPosition + y;
				if(TempPX >= 0 && TempPY >= 0 && TempPX < Area[Player.map].x_size && TempPY  < Area[Player.map].y_size)
					if(SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX] <= _SupChipWall)
						CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX]]);
			}
		}
	}else if(Level == 1){	//천장이나 하늘
		for(x=-1;x<16;x++)
		{
			TempPX = Player.x - _PlayerPosition + x;
			for(y=0;y<15;y++)
			{
				TempPY = Player.y - _PlayerPosition + y;
				//근접 셀 이미지 반투명 처리
				if(TempPX >= 0 && TempPY >= 0 && TempPX < Area[Player.map].x_size && TempPY  < Area[Player.map].y_size)
					if(SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX] > _SupChipWall)
					{
						if(x >= 6 && y >= 6 && x <= 8 && y <= 8)CopyImageEx(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX]],2,0,0,0);
						else CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX]]);
					}
			}
		}
	}
}

/*
void DrawTile(int x, int y){
	int TempPX;
	int TempPY;

	TempPX = Player.x - _PlayerPosition + x;
	TempPY = Player.y - _PlayerPosition + y;

	if(TempPX >= 0 && TempPY >= 0 && TempPX < Area[Player.map].x_size && TempPY  < Area[Player.map].y_size){
		if(SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX] <= _SupChipWall){
			CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX]]);
		}
	}

	if(TempPX >= 0 && TempPY >= 0 && TempPX < Area[Player.map].x_size && TempPY  < Area[Player.map].y_size){
		if(SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX] > _SupChipWall)
		{
			if(x >= 6 && y >= 6 && x <= 8 && y <= 8)CopyImageEx(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX]],1,0,0,0);
			else CopyImageEx(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[Area[Player.map].y_start + TempPY][Area[Player.map].x_start + TempPX]],0,0,0,0);
		}
	}

}*/