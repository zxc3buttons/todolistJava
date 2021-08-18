package com.example.todolistJava;

import java.util.ArrayList;

public class DB {
    private static ArrayList<String> todoList = new ArrayList<>();

    public static void addTODO(String todo){
        todoList.add(todo);
    }

    public static int getSize(){
        return todoList.size();
    }

    public static void deleteByIndex(int index){ todoList.set(index, null); }

    public static String getTODO(int index){
        return todoList.get(index);
    }

}
