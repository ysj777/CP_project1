#include<stdio.h>
#include<ctype.h>
#include<stdlib.h>
#include<string.h>

int main(){
    char line;
    int cnt=0;
    int alpha[26]={0};      //a~z出現次數
    while((line=getchar())!=EOF){   //getchar一個字一個字看
        if(line>='a'&&line<='z'){   //小寫
            alpha[line-'a']++;      //次數++
          }
        else if(line>='A'&&line<='Z'){  //大寫
            alpha[line-'A']++;          //次數++
        }
        if(line==' '){
            cnt++;
        }
    }
    cnt++;
    printf("%d\n",cnt);
    for(int i=0;i<26;i++){
        if(alpha[i]!=0){
            printf("%c : %d\n",'a'+i,alpha[i]); //輸出各字母出現次數
        }
    }
}