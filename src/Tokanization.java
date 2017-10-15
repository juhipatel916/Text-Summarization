
 
import java.util.StringTokenizer;
 
public class Tokanization {
    public static void main(String a[]){
        String msg = "This program gives sample code for String Tokenizer!!";
        StringTokenizer st = new StringTokenizer(msg," ");
        while(st.hasMoreTokens()){
            System.out.println(st.nextToken());
        }
    }
}
