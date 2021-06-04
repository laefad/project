package com.company.CourseWork.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;

@Entity
@Table(name = "order_item")
@FieldDefaults(level = AccessLevel.PRIVATE)
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@Builder
@Getter
@Setter
@ToString
public class OrderItem {

    @Id
    @Column(name = "id", nullable = false, updatable=false)
    @SequenceGenerator(name="order_item_id_seq",
            sequenceName="order_item_id_seq",
            allocationSize=1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator="order_item_id_seq")
    long id;

    @OneToOne
    Item item;

    @OneToOne
    Stock stock;
}
