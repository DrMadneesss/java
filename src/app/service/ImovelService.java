package app.service;

import org.springframework.stereotype.Service;

import java.util.List;

import app.dao.ImovelDao;
import app.model.Imovel;

@Service
public class ImovelService {
    private ImovelDao imovelDao = new ImovelDao(); 

    public String salvar(Imovel  imovel) {
        return this.imovelDao.salvar(imovel);
    }

    public List<Imovel> listar(){
        return this.imovelDao.listar();
    }
    
    public List<Imovel> procurar(String rua){
        return this.imovelDao.procurar(rua);
    }
}

