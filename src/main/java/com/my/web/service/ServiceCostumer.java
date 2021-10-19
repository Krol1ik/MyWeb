package com.my.web.service;

import com.my.web.model.Costumer;

import java.util.List;

public interface    ServiceCostumer {
    public void update(Costumer costumer);

    public List<Costumer> getCostumer();

    public void saveCostumer(Costumer costumer);

    public Costumer getCostumer(int id);

    public void deleteCostumer(int id);
}
