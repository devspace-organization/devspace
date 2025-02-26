package com.devspace.api.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "techs")
public class Tech {

    @Id
    @GeneratedValue
    private UUID id;

    private String name;
    private String description;
    private String icon;

    @Column(name = "number_of_users")
    private Integer numberOfUsers;

}
