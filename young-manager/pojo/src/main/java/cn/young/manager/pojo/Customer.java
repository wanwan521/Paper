package cn.young.manager.pojo;

public class Customer {

    private Long loanserialno;

    private String certid;

    private Integer overdueday;

    private Integer sumoverdueday;

    private double limitsum;

    private Integer marriage;

    private Integer sex;

    private Integer age;

    private Integer loanterm;

    private double behaviorscore;

    private String risklevel;

    private String riskresult;

    @Override
    public String toString() {
        return "Customer{" +
                "loanserialno=" + loanserialno +
                ", certid=" + certid +
                ", overdueday=" + overdueday +
                ", sumoverdueday=" + sumoverdueday +
                ", limitsum=" + limitsum +
                ", marriage=" + marriage +
                ", sex=" + sex +
                ", age=" + age +
                ", loanterm=" + loanterm +
                ", behaviorscore=" + behaviorscore +
                ", risklevel='" + risklevel + '\'' +
                ", riskresult='" + riskresult + '\'' +
                '}';
    }

    public Customer() {
    }

    public Customer(Long loanserialno, String certid, Integer overdueday, Integer sumoverdueday, double limitsum, Integer marriage, Integer sex, Integer age, Integer loanterm, double behaviorscore, String risklevel, String riskresult) {
        this.loanserialno = loanserialno;
        this.certid = certid;
        this.overdueday = overdueday;
        this.sumoverdueday = sumoverdueday;
        this.limitsum = limitsum;
        this.marriage = marriage;
        this.sex = sex;
        this.age = age;
        this.loanterm = loanterm;
        this.behaviorscore = behaviorscore;
        this.risklevel = risklevel;
        this.riskresult = riskresult;
    }

    public Long getLoanserialno() {
        return loanserialno;
    }

    public void setLoanserialno(Long loanserialno) {
        this.loanserialno = loanserialno;
    }

    public String getCertid() {
        return certid;
    }

    public void setCertid(String certid) {
        this.certid = certid;
    }

    public Integer getOverdueday() {
        return overdueday;
    }

    public void setOverdueday(Integer overdueday) {
        this.overdueday = overdueday;
    }

    public Integer getSumoverdueday() {
        return sumoverdueday;
    }

    public void setSumoverdueday(Integer sumoverdueday) {
        this.sumoverdueday = sumoverdueday;
    }

    public double getLimitsum() {
        return limitsum;
    }

    public void setLimitsum(double limitsum) {
        this.limitsum = limitsum;
    }

    public Integer getMarriage() {
        return marriage;
    }

    public void setMarriage(Integer marriage) {
        this.marriage = marriage;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getLoanterm() {
        return loanterm;
    }

    public void setLoanterm(Integer loanterm) {
        this.loanterm = loanterm;
    }

    public double getBehaviorscore() {
        return behaviorscore;
    }

    public void setBehaviorscore(double behaviorscore) {
        this.behaviorscore = behaviorscore;
    }

    public String getRisklevel() {
        return risklevel;
    }

    public void setRisklevel(String risklevel) {
        this.risklevel = risklevel;
    }

    public String getRiskresult() {
        return riskresult;
    }

    public void setRiskresult(String riskresult) {
        this.riskresult = riskresult;
    }
}
