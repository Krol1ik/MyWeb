package com.my.web.controller;

import com.my.web.model.Costumer;
import com.my.web.service.ServiceCostumer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/costumer")
public class CostumerController {

    private ServiceCostumer serviceCostumer;
    @Autowired
    public CostumerController(ServiceCostumer serviceCostumer) {
        this.serviceCostumer = serviceCostumer;
    }

    @GetMapping()
    public String index(Model model) {
        List<Costumer> costumerList = serviceCostumer.getCostumer();
        model.addAttribute("costumer", costumerList);
        return "allCostumer";
    }

    @GetMapping("/new")
    public String addPerson(Model model){
        model.addAttribute("costumer", new Costumer());
        return "new";
    }

    @PostMapping()
    public String save(@ModelAttribute("costumer") Costumer costumer){
        serviceCostumer.saveCostumer(costumer);
        return "redirect:/costumer";
    }

    @GetMapping("/{id}/edit")
    public String edit (@PathVariable("id") int id, Model model){
        model.addAttribute("costumer", serviceCostumer.getCostumer(id));
        return "edit";
    }

    @PostMapping("/{id}")
    public String update (@ModelAttribute("costumer") Costumer costumer){
        serviceCostumer.update(costumer);
        return "redirect:/costumer";
    }
    @PostMapping("/{id}/delete")
    public String delete (@PathVariable("id") int id){
        serviceCostumer.deleteCostumer(id);
        return "redirect:/costumer";
    }

    @GetMapping("/searchById")
    public String show (){

        return "searchById";
    }

    @GetMapping("/show/{id}")
    public String showById (@PathVariable("id") int id, Model model){
        model.addAttribute("costumer", serviceCostumer.getCostumer(id));
        return "/show";
    }
}
