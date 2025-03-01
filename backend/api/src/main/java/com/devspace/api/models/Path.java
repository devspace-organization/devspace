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
@Table(name = "paths")
public class Path {

    @Id
    @GeneratedValue
    private UUID id;

    private String name;

    @Column(name = "number_of_users")
    private Integer numberOfUsers;

}
