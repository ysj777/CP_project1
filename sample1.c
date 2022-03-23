#include<stdio.h>
#include<string.h>

int main(){
    char num[100];
    int cnt=0;
    int head=0;
    int rear;
    scanf("%s",num);
    int length=strlen(num);
    rear=length-1;
    while(cnt==0){
        if(head>length/2){  //跑到中間就跳出迴圈
            break;
        }
        if(num[head]!=num[rear]){   //迴文判定
            cnt++;
            break;
        }
        else{
            head++;
            rear--;
        }
    }
    if(cnt!=0){                   //不是迴文
            printf("NO\n");
    }
    else{                         //是迴文
        printf("YES\n");
    }
}