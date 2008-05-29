int ScrollMapX = 0;
int ScrollMapY = 0;

struct Map{
	int x_start, y_start;
	int x_size, y_size;
	int backchip;			//배경 맵칩
}Area[2];

//맵 영역 설정
void SetArea(){
	Area[0].x_start = 0;
	Area[0].y_start = 0;
	Area[0].x_size = 30;
	Area[0].y_size = 30;
	Area[0].backchip = 85;		//풀밭142 검정85 자갈바닥58

	Area[1].x_start = 1;
	Area[1].y_start = 4;
	Area[1].x_size = 20;
	Area[1].y_size = 20;
	Area[1].backchip = 142;		//풀밭142 검정85 자갈바닥58
}

//맵 스크롤
void MapScroll(){
	if(ScrollMapX)
	{
		if(ScrollMapX>0)ScrollMapX-=3;
		else ScrollMapX+=3;
	}
	else if(ScrollMapY)
	{
		if(ScrollMapY>0)ScrollMapY-=3;
		else ScrollMapY+=3;
	}
}

//하위 맵 그리기 - 주인공보다 하위 맵
void DrawSubLayer(){
	int x, y;
	int TempPX;
	int TempPY;

	TempPX = Player.x - _PlayerPosition;
	TempPY = Player.y - _PlayerPosition;

	for(x=-1;x<12;x++)
	{
		for(y=0;y<11;y++)
		{
			if(x + TempPX >= 0 && y + TempPY >= 0 && x + TempPX < Area[Player.map].x_size && y + TempPY  < Area[Player.map].y_size)
				CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY, subchip[SubLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]]);
			else
				CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY, subchip[Area[Player.map].backchip]);
		}
	}
}

//상위 맵 그리기 - 맵 번호에 따라 바닥 / 장애물 / 천장이나 하늘로 출력
void DrawSupLayer(int Level){
	int x, y;
	int TempPX;
	int TempPY;
	int TempChipNum;

	TempPX = Player.x - _PlayerPosition;
	TempPY = Player.y - _PlayerPosition;
	
	switch(Level)
	{
		case 0:	//바닥, 벽
			for(x=-1;x<12;x++)
			{
				for(y=0;y<11;y++)
				{
					if(x + TempPX >= 0 && y + TempPY >= 0 && x + TempPX < Area[Player.map].x_size && y + TempPY  < Area[Player.map].y_size)
						if(SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX] <= _SupChipWall)
							CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY, supchip[SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]]);
				}
			}
			break;
		case 1:	//천장이나 하늘
			for(x=-1;x<12;x++)
			{
				for(y=0;y<11;y++)
				{
					if(x + TempPX >= 0 && y + TempPY >= 0 && x + TempPX < Area[Player.map].x_size && y + TempPY  < Area[Player.map].y_size)
						if(SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX] > _SupChipWall)
						{
							if(x >= 4 && y >= 4 && x <= 6 && y <= 6)CopyImageEx(x * 16 + ScrollMapX, y * 16 + ScrollMapY, supchip[SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]],1,0,0,0);
							else CopyImageEx(x * 16 + ScrollMapX, y * 16 + ScrollMapY, supchip[SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]],0,0,0,0);
						}
				}
			}
	}
}