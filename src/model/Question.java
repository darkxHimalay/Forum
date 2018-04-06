package model;

/**
 * Created by HIMGIRI on 03-04-2018.
 */
public class Question {
    private String name;
    private String topic;
    private String question;

    public Question(String name, String topic, String question) {
        this.name = name;
        this.topic = topic;
        this.question = question;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }
}
