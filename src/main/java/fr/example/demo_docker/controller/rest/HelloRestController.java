package fr.example.demo_docker.controller.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hellos")
public class HelloRestController {

	@GetMapping
	public String getAllHellos() {
		return "Plein de hellos !!";
	}

	@GetMapping("/{id}")
	public String getHello(@PathVariable("id") Integer id) {
		return "Un hello avec l'id : " + id;
	}
	
}
