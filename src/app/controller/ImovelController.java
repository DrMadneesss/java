package app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import app.model.Imovel;
import app.service.ImovelService;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ImovelController {
    private ImovelService imovelService = new ImovelService();

    @GetMapping("/cadastrarimovel")
    public String cadastrar() {
        return "cadastrarimovel";
    }

    @PostMapping("/cadastrarimovel")
    public String cadastrarImovel(@ModelAttribute("imovel") Imovel imovel, Model model){
        model.addAttribute("texto", imovelService.salvar(imovel));
        return "mensagem";
    }

    @GetMapping("/listarimoveis")
    public String listar(Model model){
       model.addAttribute("listaImoveis", imovelService.listar());
       return "listarimoveis";

    }
    @GetMapping("/procurarimoveis")
    public String procurar(HttpServletRequest req, Model model){
        String rua = req.getParameter("descricao");
       model.addAttribute("listaImoveis", imovelService.procurar(rua));
       return "listarimoveis";

    }
}

