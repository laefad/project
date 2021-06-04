package com.company.CourseWork.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import java.util.Map;

@Entity
@Table(name = "stock")
@FieldDefaults(level = AccessLevel.PRIVATE)
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@Builder
@Getter
@Setter
@ToString
public class Stock {
    @Id
    @Column(nullable = false, updatable=false)
    @SequenceGenerator(name="stock_idstock_seq",
            sequenceName="stock_idstock_seq",
            allocationSize=1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator="stock_idstock_seq")
    long id;

    @Column(nullable = true)
    String name;

    @ElementCollection
    Map<Item, Integer> items;
}
