package com.company.CourseWork.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;

@Entity
@Table(name = "item")
@FieldDefaults(level = AccessLevel.PRIVATE)
@AllArgsConstructor(access = AccessLevel.PACKAGE)
@NoArgsConstructor(access = AccessLevel.PACKAGE)
@Builder
@Getter
@Setter
@ToString
public class Item {
    @Id
    @Column(name = "id", nullable = false, updatable=false)
    @SequenceGenerator(name="item_iditem_seq",
            sequenceName="item_iditem_seq",
            allocationSize=1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator="item_iditem_seq")
    long id;

    @Column(nullable = false)
    String name;

    @Column(nullable = false)
    double price;

    @Column(nullable = true)
    String description;

    @Column(nullable = true)
    String pathToImage;
}
