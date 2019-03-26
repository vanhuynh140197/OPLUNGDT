package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "contact_comment", schema = "public", catalog = "oplungdienthoai")
public class ContactCommentEntity {
    private String contactId;
    private String titleContact;
    private String descriptions;
    private Date dateContacts;
    private String email;
    private Boolean contactStatus;

    @Id
    @Column(name = "ContactID")
    public String getContactId() {
        return contactId;
    }

    public void setContactId(String contactId) {
        this.contactId = contactId;
    }

    @Basic
    @Column(name = "TitleContact")
    public String getTitleContact() {
        return titleContact;
    }

    public void setTitleContact(String titleContact) {
        this.titleContact = titleContact;
    }

    @Basic
    @Column(name = "Descriptions")
    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    @Basic
    @Column(name = "DateContacts")
    public Date getDateContacts() {
        return dateContacts;
    }

    public void setDateContacts(Date dateContacts) {
        this.dateContacts = dateContacts;
    }

    @Basic
    @Column(name = "Email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "ContactStatus")
    public Boolean getContactStatus() {
        return contactStatus;
    }

    public void setContactStatus(Boolean contactStatus) {
        this.contactStatus = contactStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ContactCommentEntity that = (ContactCommentEntity) o;

        if (contactId != null ? !contactId.equals(that.contactId) : that.contactId != null) return false;
        if (titleContact != null ? !titleContact.equals(that.titleContact) : that.titleContact != null) return false;
        if (descriptions != null ? !descriptions.equals(that.descriptions) : that.descriptions != null) return false;
        if (dateContacts != null ? !dateContacts.equals(that.dateContacts) : that.dateContacts != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (contactStatus != null ? !contactStatus.equals(that.contactStatus) : that.contactStatus != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = contactId != null ? contactId.hashCode() : 0;
        result = 31 * result + (titleContact != null ? titleContact.hashCode() : 0);
        result = 31 * result + (descriptions != null ? descriptions.hashCode() : 0);
        result = 31 * result + (dateContacts != null ? dateContacts.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (contactStatus != null ? contactStatus.hashCode() : 0);
        return result;
    }
}
