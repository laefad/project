package com.company.CourseWork.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import java.util.Map;

@Entity
@Table(name = "orders")
@FieldDefaults(level = AccessLevel.PRIVATE)
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@Builder
@Getter
@Setter
@ToString
public class Order {

    @Id
    @Column(nullable = false, updatable=false)
    @SequenceGenerator(name="order_idorder_seq",
            sequenceName="order_idorder_seq",
            allocationSize=1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator="order_idorder_seq")
    long id;

    @Column(nullable = false)
    String orderStatus;

    @Column(nullable = true)
    String orderName;

    @ElementCollection
    Map<OrderItem, Integer> items;
}
