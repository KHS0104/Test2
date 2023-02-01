package schedule;
// 이클립스에서 행번호 옆에 더블클릭 ---> '브레이크포인트'가 설정됨.
// 디버그 보통, 브레이크포인트 설정 / 한줄한줄씩 실행하면서 값들을 들여다봄.
public class Test {
	public static void main(String[] args) {
		int a = 5;
		while(a<10) {
			//if(a%2==0)
				a++;
		}
		System.out.println("반복문이 종료됨. a:"+a);
	}
}
