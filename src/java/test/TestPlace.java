/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import entities.Place;
import service.PlaceService;
import service.SectionService;

/**
 *
 * @author admin
 */
public class TestPlace {
    public static void main(String[] args) {

		 PlaceService ps = new PlaceService();
	        SectionService ts = new SectionService();

	       ps.create(new Place(5,"a","b",1));
	        for(Place p1 : ps.findAll())
	        {
	            System.out.println(p1);
	        }
	}
    
}
