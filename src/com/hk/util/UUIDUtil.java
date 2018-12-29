package com.hk.util;

import org.junit.Test;

import java.util.UUID;

public class UUIDUtil {
    public static  String   getUUID(){
        String uuid=UUID.randomUUID().toString();
        String[] uuids=uuid.split("-");
        StringBuilder sb=new StringBuilder();
        for(String s:uuids) {
            sb.append(s);
        }
        return sb.toString();
        }
        @Test
    public void testUUID() {
        getUUID();
    }
}

