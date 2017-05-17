package com.questions;

public class RegistrationId 
{
    static Integer rid = 111111110 ;
    
    public static Integer getRid()
    {
        ++rid ;
        return rid ;
    }
}
