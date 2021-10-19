package com.my.web.dao;

import com.my.web.model.Costumer;

import java.util.List;

public interface Dao {


    public void update(Costumer costumer);

    public List<Costumer> getCostumer();

    public void saveCostumer(Costumer student);

    public Costumer getCostumer(int id);

    public void deleteCostumer(int id);
}

