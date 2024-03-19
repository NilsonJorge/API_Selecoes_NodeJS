import mysql from "mysql"

const conexao = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '',
    database: 'bd_copa'
})

conexao.connect()
/**
 * Executa um código SQL com ou sem valores
 * @param {string} sql instrucao sql a ser executada
 * @param {string=id / [selecao, id]} valores a serem passados para o sql
 * @param {string} mensagemReject mensagem a ser exibida 
 * @returns objeto da Promissse
 */
export const consulta = (sql,valores='',mensagemReject) => {
    return new Promise((resolve,reject) => {
        conexao.query(sql, valores, (error,result) => {
            if(error) return reject(mensagemReject)
            
            const row = JSON.parse(JSON.stringify(result))
            return resolve(row)
        })
    })
}

export default conexao