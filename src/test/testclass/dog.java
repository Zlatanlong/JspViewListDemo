package test.testclass;

public class dog {
    private String name;
    private String kinds;

    dog(){}

    public dog(String a, String b){this.name=a;this.kinds=b;}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKinds() {
        return kinds;
    }

    public void setKinds(String kinds) {
        this.kinds = kinds;
    }
}
