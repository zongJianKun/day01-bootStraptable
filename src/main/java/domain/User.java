package domain;

public class User {
    private Integer id;
    private String username;
    private String nickname;
    private String email;
    private String phone;
    private String address;
    private int state;
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getNickname() {
        return nickname;
    }
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public int getState() {
        return state;
    }
    public void setState(int state) {
        this.state = state;
    }
    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("User [id=");
        builder.append(id);
        builder.append(", username=");
        builder.append(username);
        builder.append(", nickname=");
        builder.append(nickname);
        builder.append(", email=");
        builder.append(email);
        builder.append(", phone=");
        builder.append(phone);
        builder.append(", address=");
        builder.append(address);
        builder.append(", state=");
        builder.append(state);
        builder.append("]");
        return builder.toString();
    }
}
