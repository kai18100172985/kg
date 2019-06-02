package com.kg.service;

import java.util.List;

import com.kg.pojo.Product;
import com.kg.pojo.PropertyValue;

public interface PropertyValueService {
    void init(Product p);
    void update(PropertyValue pv);

    PropertyValue get(int ptid, int pid);
    List<PropertyValue> list(int pid);
}
