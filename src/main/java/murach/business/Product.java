package murach.business;

import java.io.Serializable;

public class Product implements Serializable {
    String code;

    public Product() {
        code = "";
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
