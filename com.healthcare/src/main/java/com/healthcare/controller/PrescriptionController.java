package com.healthcare.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.healthcare.model.Prescription;  

@Controller  
public class PrescriptionController {
	@RequestMapping("/")
	public String showPage() {
		return "add_doctor";
	}
    @RequestMapping("/docForm")  
    public String docForm(){  
       return "patient";  
    }
    
    @RequestMapping("/addPrescription")  
    public String addPrescrition(@ModelAttribute Prescription prescription){  
    	
    	
    	System.out.println(prescription);
       return "success";  
    } 
    
    
    
//    @RequestMapping(value="/save",method = RequestMethod.POST)  
//    public ModelAndView save(@ModelAttribute("emp") Patient emp){  
//        System.out.println(emp.getName()+" "+emp.getTreatment()+""+emp.getPhone());  
//     
//        return new ModelAndView("add_doctor");
//    }  
//      
//    @RequestMapping("/patient")  
//    public ModelAndView viewemp(){  
//          
//        List<Patient> list=new ArrayList<Patient>();  
//        list.add(new Patient("rahul","Heart",99028349));  
//        list.add(new Patient("aditya","Diabatic",998774874));  
//        list.add(new Patient("sachin","Mental",940348030));  
//          
//        return new ModelAndView("viewemp","list",list);  
//    }  
}  

