//// 스킬 ////
struct Skill{
	string Name;		//스킬 이름
	int SP;				//소모 SP
	int Icon;			//스킬 표시 아이콘
	int Type;			//스킬 종류
	string Tip;			//스킬 설명
};

struct Skill SkillList[22];	//스킬 리스트(임시 22개)

const string SkillType[7] = {"스킬없음", "패시브", "자신긍정스킬", "타겟부정스킬", "범위부정스킬", "양성스킬", "특수스킬"};
//"주민","견습생", "마술사", "주술사", "복사",
//"불의 마법사", "물의 마법사", "땅의 마법사", "소환의 마법사", "염력의 마법사",
//"차원의 마법사", "빛의 마법사", "프리스트", "마도사", "타임워커"

void SetSkill(){	//스킬 설정
	SkillList[0].Name = "스킬없음";		SkillList[0].SP = 0;		SkillList[0].Icon = 0;		SkillList[0].Type = 0;	SkillList[0].Tip = "스킬없음";
	SkillList[1].Name = "치료술";			SkillList[1].SP = 3;		SkillList[1].Icon = 17;		SkillList[1].Type = 2;	SkillList[1].Tip = "자신을 치료합니다";
	SkillList[2].Name = "경공";				SkillList[2].SP = 5;		SkillList[2].Icon = 18;		SkillList[2].Type = 6;	SkillList[2].Tip = "다른 곳으로 날라갑니다";
	SkillList[3].Name = "빛나는구체";		SkillList[3].SP = 4;		SkillList[3].Icon = 19;		SkillList[3].Type = 3;	SkillList[3].Tip = "빛의 속성으로 공격합니다";
	SkillList[4].Name = "마법화구";			SkillList[4].SP = 5;		SkillList[4].Icon = 20;		SkillList[4].Type = 3;	SkillList[4].Tip = "목표물에 불을 붙임";
	SkillList[5].Name = "프리즈";			SkillList[5].SP = 8;		SkillList[5].Icon = 21;		SkillList[5].Type = 3;	SkillList[5].Tip = "목표물을 얼려버림";
	SkillList[6].Name = "돌소나기";			SkillList[6].SP = 7;		SkillList[6].Icon = 22;		SkillList[6].Type = 4;	SkillList[6].Tip = "하늘에서 돌이 떨어짐";
	SkillList[7].Name = "화염폭풍";			SkillList[7].SP = 10;		SkillList[7].Icon = 23;		SkillList[7].Type = 4;	SkillList[7].Tip = "작열하는 폭풍을 발생";
	SkillList[8].Name = "글라시아";			SkillList[8].SP = 20;		SkillList[8].Icon = 24;		SkillList[8].Type = 4;	SkillList[8].Tip = "거대한 얼음을 생성";
	SkillList[9].Name = "지진";				SkillList[9].SP = 15;		SkillList[9].Icon = 25;		SkillList[9].Type = 4;	SkillList[9].Tip = "해당 지역에 지진을 발생";
	SkillList[10].Name = "부두인형";		SkillList[10].SP = 15;		SkillList[10].Icon = 26;	SkillList[10].Type = 3;	SkillList[10].Tip = "부두인형을 괴롭힙니다";
	SkillList[11].Name = "기우제";			SkillList[11].SP = 100;		SkillList[11].Icon = 27;	SkillList[11].Type = 5;	SkillList[11].Tip = "비가 내리게 합니다.";
	SkillList[12].Name = "보호부적";		SkillList[12].SP = 70;		SkillList[12].Icon = 28;	SkillList[12].Type = 2;	SkillList[12].Tip = "부적을 이용하여 방어";
	SkillList[13].Name = "정령소환";		SkillList[13].SP = 5;		SkillList[13].Icon = 29;	SkillList[13].Type = 6;	SkillList[13].Tip = "현지형에 따른 정령 소환";
	SkillList[14].Name = "사이코키네시스";	SkillList[14].SP = 7;		SkillList[14].Icon = 30;	SkillList[14].Type = 3;	SkillList[14].Tip = "염력의 광선을 발사";
	SkillList[15].Name = "텔레포트";		SkillList[15].SP = 9;		SkillList[15].Icon = 31;	SkillList[15].Type = 6;	SkillList[15].Tip = "자신의 위치를 이동합니다";
	SkillList[16].Name = "힐";				SkillList[16].SP = 15;		SkillList[16].Icon = 32;	SkillList[16].Type = 2;	SkillList[16].Tip = "체력을 회복합니다";
	SkillList[17].Name = "홀리라이트";		SkillList[17].SP = 100;		SkillList[17].Icon = 33;	SkillList[17].Type = 3;	SkillList[17].Tip = "성스러운 구체를 발사";
	SkillList[18].Name = "블레싱";			SkillList[18].SP = 70;		SkillList[18].Icon = 34;	SkillList[18].Type = 2;	SkillList[18].Tip = "일정시간 동안 능력치 상승";
	SkillList[19].Name = "천상의심판";		SkillList[19].SP = 5;		SkillList[19].Icon = 35;	SkillList[19].Type = 5;	SkillList[19].Tip = "하늘의 심판을 받게함";
	SkillList[20].Name = "선라이즈";		SkillList[20].SP = 7;		SkillList[20].Icon = 36;	SkillList[20].Type = 5;	SkillList[20].Tip = "한곳에 모든 마력을 분사";
	SkillList[21].Name = "시간제어";		SkillList[21].SP = 9;		SkillList[21].Icon = 37;	SkillList[21].Type = 6;	SkillList[21].Tip = "시간의 정지 또는 역재생";
}