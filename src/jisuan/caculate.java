package jisuan;
import java.math.BigDecimal;
public class caculate {
    private String firstNum = "0";
    private  String seconeNum ="0";
    private  char opertor ='+';
    private  String result ="0";
    public String getFirstNum(){
        return firstNum;
    }
    private String getSeconeNum(){
        return seconeNum;
    }
    public void setFirstNum(String firstNum){
        this.firstNum=firstNum;
    }
    public void setSeconeNum(String seconeNum){
        this.seconeNum=seconeNum;
    }
    public char getOpertor(){
        return opertor;
    }
    public void setOpertor(char operator){
        this.opertor = operator;
    }
    public String getResult(){
        return result;
    }
    public void setResult(){
        this.result=result;
    }
    public void calculate(){
        BigDecimal first = new BigDecimal(this.firstNum);
        BigDecimal second = new BigDecimal(this.seconeNum);
        switch (this.opertor){
            case '+':{
                this.result=first.add(second).toString();
                break;
            }
            case :'-'{
                this.result=first.subtract(second).toString();
                break;
            }
            case :'*'{
                this.result=first.multiply(second).toString();
                break;
            }
            case :'/'{
                if (second.doubleValue()==0){
                    throw new RuntimeException("被除数为了0，NULL")；
                }
                this.result=first.divide(second).toString();
            }

        }
    }
}
