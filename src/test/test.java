package test;

import dao.ItemsDAO;
import entity.Items;
import test.testclass.dog;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class test {
    public static void main(String[] args) {
        HashSet<dog> set = new HashSet<>();
        dog d1 = new dog("a", "b");
        dog d2 = new dog("a", "b");
        dog d3=d2;
        System.out.println(d1.hashCode());
        System.out.println(d2.hashCode());
        System.out.println(d3.hashCode());
        set.add(d1);
        set.add(d2);
        set.add(d3);
        for (dog dog : set) {
            System.out.println("这个狗的名字和种类是："+dog.getName()+dog.getKinds());
        }
    }
}
