import SelecaoRepository from '../repositories/SelecaoRepository.js'

class SelecaoController {

    async index(req,res){
        const result = await SelecaoRepository.findAll()
        res.json(result)
    }

    async show(req,res) {

        const id = req.params.id //coleta da requisição o id

        const result = await SelecaoRepository.findById(id)
    
        res.json(result)
    }

    async store (req,res) {

        const selecao = req.body //coleta da requisição o id
        const result = await SelecaoRepository.create(selecao)

        res.json(result)
    }
    

    async update (req,res) {
        const id = req.params.id
        const selecao = req.body //coleta da requisição o id
        
        const result = await SelecaoRepository.update(id,selecao)

        res.json(result)
        
    }

    async delete(req,res) {
        const id = req.params.id //coleta da requisição o id
        
        const result = await SelecaoRepository.delete(id)

        res.json(result)
    }
}

//padrão Singleton
export default new SelecaoController()