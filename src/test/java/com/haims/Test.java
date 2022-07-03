package com.haims;

import java.io.IOException;
import java.net.InetAddress;

public class Test {
    public static void main(String[] args) throws Exception {
//        for (int i = 1; i < 3599; i++) {
//            if (!isPrime(i)) continue;
//            for (int j = i + 1; j < 3599; j++) {
//                if (!isPrime(j)) continue;
//                if (is3599(i,j)) {
//                    System.out.println(i + "   " + j);
//                }
//            }
//        }
        int num = 58 * 60;
        int e = 31;
        for (int i = 1; i < 10; i++) {
            if ((num * i + 1) % 31 == 0) {
                System.out.println(i);
            }
        }
    }

    public static boolean ping(String ipAddress) throws Exception {
        int  timeOut =  1000 ;  //超时应该在3钞以上
        boolean status = InetAddress.getByName(ipAddress).isReachable(timeOut);
        // 当返回值是true时，说明host是可用的，false则不可。
        return status;
    }
    // 判断素数
    public static boolean isPrime(int n) {
        if (n <= 1) {
            return false;
        }
        for (int i = 2; i < n; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
    // 判断两数乘积是否为3599
    public static boolean is3599(int a, int b) {
        if (a * b == 3599) {
            return true;
        }
        return false;
    }
}
