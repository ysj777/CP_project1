#include <stdio.h>
#include <stdlib.h>
int is_prime(int);
int main(){
	int number;
	scanf("%d",&number);
	if(is_prime(number)){
		printf("YES\n");
	}else{
		printf("NO\n");
	}

  system("PAUSE");
  return 0;
}
int is_prime(int num){    //判定是否為質數
	int i;
	if(num==1){
		return 0;
	}else{
		for(i=2;i<num;i++){
			if(num%i==0){       //是否被除了1和自己本身的數整除
				return 0;
			}
		}
	}
	return 1;
}