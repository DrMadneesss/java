package app.controller;

import java.util.List;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContatosController {
    @GetMapping("/contatos")
    public String contatos(Model model) { 
        List<String> listaContatos = new ArrayList<>();
        return "contatos";
    }
}
