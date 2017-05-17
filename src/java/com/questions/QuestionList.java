package com.questions;

import org.hibernate.* ;
import org.hibernate.cfg.* ;
import java.util.* ;
import com.mapping.Questionbank ;

public class QuestionList 
{   
    static List<Question> fqlist ;
    static List<Question> qlist = new ArrayList<Question>();
    static Questionbank q ;
    static Question q1 ;
    static int x = 0 ;
    public static List getQList()
    {
        Session sess = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
        Transaction t = sess.beginTransaction();
        int i=1 , n = QuestionList.getNo_of_Question() ;
        
        qlist.clear();
    
        Query query = sess.createQuery("from Questionbank");   
        List<Questionbank> list = query.list();
        Collections.shuffle(list);
        Iterator<Questionbank> itr = list.iterator();
        while(i<=n && itr.hasNext())
        {
            q = itr.next();
            q1 = new Question(i,q.getQuestion(),q.getAns1(),q.getAns2(),q.getAns3(),q.getAns4(),q.getAnswer(),null);
            qlist.add(q1);
            i++ ;
        }
        
        return qlist ;
    }
    
    public static List getList()
    {
        return fqlist ;
    }
    
    public static Question getQuestion(int n)
    {
        if(x==0)
        {
            fqlist = QuestionList.getQList();
            x++ ;
        }
        Iterator<Question> itr = fqlist.iterator();
        
        while(itr.hasNext())
        {
            q1 = itr.next();
            if(q1.getQid() == n)
            {
                break ;
            }
        }
        return q1 ;
        
    }
    
    public static int getNo_of_Question()
    {
        return 10 ;
    }
}
