package model;

        import utility.ConnectionProvider;

        import java.sql.Connection;
        import java.sql.PreparedStatement;
        import java.sql.ResultSet;
        import java.sql.Statement;
        import java.util.ArrayList;

/**
 * Created by HIMGIRI on 30-03-2018.
 */
public class SaveQuestion {
    private static Connection con;
    private static PreparedStatement ps;
    private static ResultSet rs;
    private static Statement stm;
    public static void saveQuestion(String question,String topic,String name) {
        try {
            con=ConnectionProvider.getConnection();
            ps = con.prepareStatement("INSERT INTO save_question VALUES (?,?,?)");
            ps.setString(1, question);
            ps.setString(2, topic);
            ps.setString(3,name);
            ps.executeUpdate();
        } catch (Exception e) {e.printStackTrace();}
    }
    public String showName(){
        try{
            con=ConnectionProvider.getConnection();
            ps=con.prepareStatement("SELECT * FROM save_question");
            rs=ps.executeQuery();
            while(rs.next()){
               return rs.getString(3);
            }
            }
        catch (Exception e){e.printStackTrace();}
        return null;
    }
    public String showTopic(){
        try{
            con=ConnectionProvider.getConnection();
            ps=con.prepareStatement("SELECT * FROM save_question");
            rs=ps.executeQuery();
            while(rs.next()){
                return rs.getString(2);
            }
        }
        catch (Exception e){e.printStackTrace();}
        return null;
    }
    public String showQuestion(){
        try{
            con=ConnectionProvider.getConnection();
            ps=con.prepareStatement("SELECT * FROM save_question");
            rs=ps.executeQuery();
            while(rs.next()){
                return rs.getString(1);
            }
        }
        catch (Exception e){e.printStackTrace();}
        return null;
    }
    //public ArrayList<Question> showQuestion(){}
    public static void main(String[] args) {
        SaveQuestion s=new SaveQuestion();
        String n=s.showName();
        String t=s.showTopic();
        String q=s.showQuestion();
        System.out.println(n+t+q);
    }
}