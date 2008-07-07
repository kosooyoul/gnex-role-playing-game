//// 장비 ////
struct Equip{
	string Name;		//장비 이름
	long int Cost;		//장비 가격
	int Icon;			//장비 표시 아이콘
	int Type;			//장비 종류
	string Tip;			//장비 설명
	
	int Option[5];		//물리공격력,마법공격력,방어력,명중률,회피율
	int Eliment[2];		//속성번호, 속성등급
};

struct Equip EquipList[38];	//장비 리스트(임시 38개)

const string EquipType[6] = {"장비 없음", "머리", "손", "의상", "신발", "장신구"};

void SetEquip(){	//장비 설정
	EquipList[0].Name = "장비 없음";		EquipList[0].Cost = 0;		EquipList[0].Icon = 0;		EquipList[0].Type = 0;	EquipList[0].Tip = "장비 없음";
	EquipList[1].Name = "헬멧";				EquipList[1].Cost = 300;	EquipList[1].Icon = 1;		EquipList[1].Type = 1;	EquipList[1].Tip = "내용무";
	EquipList[2].Name = "날개모자";			EquipList[2].Cost = 500;	EquipList[2].Icon = 2;		EquipList[2].Type = 1;	EquipList[2].Tip = "내용무";
	EquipList[3].Name = "위저드햇";			EquipList[3].Cost = 400;	EquipList[3].Icon = 3;		EquipList[3].Type = 1;	EquipList[3].Tip = "내용무";
	EquipList[4].Name = "마술사모자";		EquipList[4].Cost = 500;	EquipList[4].Icon = 4;		EquipList[4].Type = 1;	EquipList[4].Tip = "내용무";
	EquipList[5].Name = "근위대모자";		EquipList[5].Cost = 800;	EquipList[5].Icon = 5;		EquipList[5].Type = 1;	EquipList[5].Tip = "내용무";
	EquipList[6].Name = "그라디우스";		EquipList[6].Cost = 700;	EquipList[6].Icon = 6;		EquipList[6].Type = 2;	EquipList[6].Tip = "내용무";
	EquipList[7].Name = "브리트라";			EquipList[7].Cost = 1000;	EquipList[7].Icon = 7;		EquipList[7].Type = 2;	EquipList[7].Tip = "내용무";
	EquipList[8].Name = "갈랑글랭";			EquipList[8].Cost = 200;	EquipList[8].Icon = 8;		EquipList[8].Type = 2;	EquipList[8].Tip = "내용무";
	EquipList[9].Name = "프렘버그";			EquipList[9].Cost = 1500;	EquipList[9].Icon = 9;		EquipList[9].Type = 2;	EquipList[9].Tip = "내용무";
	EquipList[10].Name = "케라";			EquipList[10].Cost = 1500;	EquipList[10].Icon = 10;	EquipList[10].Type = 2;	EquipList[10].Tip = "내용무";
	EquipList[11].Name = "아쉴리드";		EquipList[11].Cost = 10000;	EquipList[11].Icon = 11;	EquipList[11].Type = 2;	EquipList[11].Tip = "내용무";
	EquipList[12].Name = "에르실리온";		EquipList[12].Cost = 70000;	EquipList[12].Icon = 12;	EquipList[12].Type = 2;	EquipList[12].Tip = "내용무";
	EquipList[13].Name = "비크렉";			EquipList[13].Cost = 500;	EquipList[13].Icon = 13;	EquipList[13].Type = 2;	EquipList[13].Tip = "내용무";
	EquipList[14].Name = "마도사로드";		EquipList[14].Cost = 7000;	EquipList[14].Icon = 14;	EquipList[14].Type = 2;	EquipList[14].Tip = "내용무";
	EquipList[15].Name = "사파이어로드";	EquipList[15].Cost = 9000;	EquipList[15].Icon = 15;	EquipList[15].Type = 2;	EquipList[15].Tip = "내용무";
	EquipList[16].Name = "고대의지팡이";	EquipList[16].Cost = 15000;	EquipList[16].Icon = 16;	EquipList[16].Type = 2;	EquipList[16].Tip = "내용무";
	EquipList[17].Name = "그라니아";		EquipList[17].Cost = 40000;	EquipList[17].Icon = 17;	EquipList[17].Type = 2;	EquipList[17].Tip = "내용무";
	EquipList[18].Name = "미스릴스태프";	EquipList[18].Cost = 70000;	EquipList[18].Icon = 18;	EquipList[18].Type = 2;	EquipList[18].Tip = "내용무";
	EquipList[19].Name = "라니스플래쉬";	EquipList[19].Cost = 99000;	EquipList[19].Icon = 19;	EquipList[19].Type = 2;	EquipList[19].Tip = "내용무";
	EquipList[20].Name = "페이드아머";		EquipList[20].Cost = 700;	EquipList[20].Icon = 20;	EquipList[20].Type = 3;	EquipList[20].Tip = "내용무";
	EquipList[21].Name = "오리에드아머";	EquipList[21].Cost = 9000;	EquipList[21].Icon = 21;	EquipList[21].Type = 3;	EquipList[21].Tip = "내용무";
	EquipList[22].Name = "미스릴아머";		EquipList[22].Cost = 50000;	EquipList[22].Icon = 22;	EquipList[22].Type = 3;	EquipList[22].Tip = "내용무";
	EquipList[23].Name = "프로텍터";		EquipList[23].Cost = 400;	EquipList[23].Icon = 23;	EquipList[23].Type = 3;	EquipList[23].Tip = "내용무";
	EquipList[24].Name = "벨벳로브";		EquipList[24].Cost = 5000;	EquipList[24].Icon = 24;	EquipList[24].Type = 3;	EquipList[24].Tip = "내용무";
	EquipList[25].Name = "마술사망토";		EquipList[25].Cost = 80000;	EquipList[25].Icon = 25;	EquipList[25].Type = 3;	EquipList[25].Tip = "내용무";
	EquipList[26].Name = "정화의오브";		EquipList[26].Cost = 700;	EquipList[26].Icon = 26;	EquipList[26].Type = 2;	EquipList[26].Tip = "내용무";
	EquipList[27].Name = "가시방패";		EquipList[27].Cost = 1000;	EquipList[27].Icon = 27;	EquipList[27].Type = 2;	EquipList[27].Tip = "내용무";
	EquipList[28].Name = "레뮬러실드";		EquipList[28].Cost = 2000;	EquipList[28].Icon = 28;	EquipList[28].Type = 2;	EquipList[28].Tip = "내용무";
	EquipList[29].Name = "태양의가호";		EquipList[29].Cost = 15000;	EquipList[29].Icon = 29;	EquipList[29].Type = 2;	EquipList[29].Tip = "내용무";
	EquipList[30].Name = "미스릴실드";		EquipList[30].Cost = 30000;	EquipList[30].Icon = 30;	EquipList[30].Type = 2;	EquipList[30].Tip = "내용무";
	EquipList[31].Name = "궁극의보호구";	EquipList[31].Cost = 50000;	EquipList[31].Icon = 31;	EquipList[31].Type = 2;	EquipList[31].Tip = "내용무";
	EquipList[32].Name = "슈즈";			EquipList[32].Cost = 500;	EquipList[32].Icon = 32;	EquipList[32].Type = 4;	EquipList[32].Tip = "내용무";
	EquipList[33].Name = "달핀슈즈";		EquipList[33].Cost = 4000;	EquipList[33].Icon = 33;	EquipList[33].Type = 4;	EquipList[33].Tip = "내용무";
	EquipList[34].Name = "윙슈즈";			EquipList[34].Cost = 5000;	EquipList[34].Icon = 34;	EquipList[34].Type = 4;	EquipList[34].Tip = "내용무";
	EquipList[35].Name = "절대의반지";		EquipList[35].Cost = 800;	EquipList[35].Icon = 35;	EquipList[35].Type = 5;	EquipList[35].Tip = "내용무";
	EquipList[36].Name = "루비링";			EquipList[36].Cost = 700;	EquipList[36].Icon = 36;	EquipList[36].Type = 5;	EquipList[36].Tip = "내용무";
	EquipList[37].Name = "다이아몬드링";	EquipList[37].Cost = 1000;	EquipList[37].Icon = 37;	EquipList[37].Type = 5;	EquipList[37].Tip = "내용무";
	
}