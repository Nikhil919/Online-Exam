package com.mapping;
// Generated 21 Dec, 2016 3:13:39 PM by Hibernate Tools 4.3.1



public class Questionbank  implements java.io.Serializable {


     private int qid;
     private String question;
     private String ans1;
     private String ans2;
     private String ans3;
     private String ans4;
     private String answer;

    public Questionbank() {
    }

	
    public Questionbank(int qid) {
        this.qid = qid;
    }
    public Questionbank(int qid, String question, String ans1, String ans2, String ans3, String ans4, String answer) {
       this.qid = qid;
       this.question = question;
       this.ans1 = ans1;
       this.ans2 = ans2;
       this.ans3 = ans3;
       this.ans4 = ans4;
       this.answer = answer;
    }
   
    public int getQid() {
        return this.qid;
    }
    
    public void setQid(int qid) {
        this.qid = qid;
    }
    public String getQuestion() {
        return this.question;
    }
    
    public void setQuestion(String question) {
        this.question = question;
    }
    public String getAns1() {
        return this.ans1;
    }
    
    public void setAns1(String ans1) {
        this.ans1 = ans1;
    }
    public String getAns2() {
        return this.ans2;
    }
    
    public void setAns2(String ans2) {
        this.ans2 = ans2;
    }
    public String getAns3() {
        return this.ans3;
    }
    
    public void setAns3(String ans3) {
        this.ans3 = ans3;
    }
    public String getAns4() {
        return this.ans4;
    }
    
    public void setAns4(String ans4) {
        this.ans4 = ans4;
    }
    public String getAnswer() {
        return this.answer;
    }
    
    public void setAnswer(String answer) {
        this.answer = answer;
    }


}


