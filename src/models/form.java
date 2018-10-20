package models;

import java.util.Date;

public class form {
    int user_id;
    String date_of_creation;
    String event_name;
    String event_department;
    String event_incharge;
    String date_of_event;
    String attendees;
    String activity_for;
    String type;
    String category;


    public form() {
        this.user_id = user_id;
        this.date_of_creation = date_of_creation;
        this.event_name = event_name;
        this.event_department = event_department;
        this.event_incharge = event_incharge;
        this.date_of_event = date_of_event;
        this.attendees = attendees;
        this.activity_for = activity_for;
        this.type = type;
        this.category = category;

    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getDate_of_creation() {
        return date_of_creation;
    }

    public void setDate_of_creation(String date_of_creation) {
        this.date_of_creation = date_of_creation;
    }

    public String getEvent_name() {
        return event_name;
    }

    public void setEvent_name(String event_name) {
        this.event_name = event_name;
    }

    public String getEvent_department() {
        return event_department;
    }

    public void setEvent_department(String event_department) {
        this.event_department = event_department;
    }

    public String getEvent_incharge() {
        return event_incharge;
    }

    public void setEvent_incharge(String event_incharge) {
        this.event_incharge = event_incharge;
    }

    public String getDate_of_event() {
        return date_of_event;
    }

    public void setDate_of_event(String date_of_event) {
        this.date_of_event = date_of_event;
    }

    public String getAttendees() {
        return attendees;
    }

    public void setAttendees(String attendees) {
        this.attendees = attendees;
    }

    public String getActivity_for() {
        return activity_for;
    }

    public void setActivity_for(String activity_for) {
        this.activity_for = activity_for;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }




}
