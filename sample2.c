#include<stdio.h>

int main(){
    int hour1,minute1;  //開始時間
    int hour2,minute2;  //結束時間
    int total;
    int cost=0;
    scanf("%d%d",&hour1,&minute1);
    scanf("%d%d",&hour2,&minute2);
    total=(hour2-hour1)*60;
    total+=(minute2-minute1); //經過時間(分鐘)
    if(total<30){             //30分以內不用錢
            printf("%d\n",cost);
    }
    if(total>=30&&total<=120){  //30~120之間半小時30元
        cost=total/30*30;
        printf("%d\n",cost);
    }
    if(total>120&&total<=240){  //120~240之間每半小時40元
        cost=120;
        total-=120;
        cost+=(total/30*40);
        printf("%d\n",cost);
    }
    if(total>240){            //大於240每半小時60元
        cost=280;
        total-=240;
        cost+=(total/30*60);
        printf("%d\n",cost);
    }
    return 0;
}