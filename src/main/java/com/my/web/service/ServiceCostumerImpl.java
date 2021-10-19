package com.my.web.service;

import com.my.web.dao.CostumerDao;
import com.my.web.model.Costumer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ServiceCostumerImpl implements ServiceCostumer{

    @Autowired
    private CostumerDao costumerDao;

    @Override
    public void update(Costumer costumer) {
        costumerDao.update(costumer);
    }

    @Override
    @Transactional
    public List<Costumer> getCostumer() {
        return costumerDao.getCostumer();
    }

    @Override
    @Transactional
    public void saveCostumer(Costumer costumer) {
        costumerDao.saveCostumer(costumer);
    }

    @Override
    @Transactional
    public Costumer getCostumer(int id) {
        return costumerDao.getCostumer(id);
    }

    @Override
    @Transactional
    public void deleteCostumer(int id) {
        costumerDao.deleteCostumer(id);
    }
}

