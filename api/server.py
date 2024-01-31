from flask import Flask, request, json, jsonify
import mysql.connector
from mysql.connector import Error
from mysql.connector import errorcode
from os import environ
from flask_cors import CORS

from helper_functions.queries_functions import run_insert_query, run_select_query, run_update_query
from helper_functions.queries import insert_usuario, insert_aluno, insert_instrutor, insert_frequencia,\
select_alunos_com_instrutor, select_instrutores_e_cont_alunos, select_todas_frequencias,\
select_todos_usuarios, select_fichas_de_aluno, select_ficha_dia_semana, select_fichas_periodo,\
select_salarios, select_instrutores_n_alunos, select_inadimplentes_mes, select_todos_instrutores,\
select_todos_exerciicos, insert_novo_exercicio, select_exercicio_musculo,\
insert_nova_ficha, insert_treino, insert_contem, update_instrutor,\
select_localizacoes, select_localizacoes_abertas, select_agendamentos, count_agendamentos

app = Flask(__name__)
CORS(app)
app.config['JSON_AS_ASCII'] = False


@app.route('/')
def home():
    return "API da academia"

@app.route("/localizacoes", methods=["GET"])
def academias():
    args = request.args
    incluir_fechadas = args.get('incluir_fechadas', default=True, type=is_it_true)
    horarios = args.get('horarios')
    query = select_localizacoes if incluir_fechadas == True else select_localizacoes_abertas
    localizacoes=json.loads(run_select_query(query))
    data = []
    for localizacao in localizacoes:
        localizacao_dict = {
            "id": localizacao[0],
            "titulo": localizacao[1],
            "conteudo": localizacao[2],
            "aberto": True if localizacao[3] else False,
            "mascara": localizacao[4],
            "toalha": localizacao[5],
            "bebedouro": localizacao[6],
            "vestiario": localizacao[7],
            "agendamentos": []
        }
        time_values = ', '.join([f"{horarios}"])
        len_agendamentos = json.loads(run_select_query(count_agendamentos, (localizacao[0], time_values)))[0][0]
        if(len_agendamentos > 0):
            agendamentos = json.loads(run_select_query(select_agendamentos, (localizacao[0],)))
            for agendamento in agendamentos:
                localizacao_dict["agendamentos"].append({"dias_semana": agendamento[0], "horarios": agendamento[1]})
            data.append(localizacao_dict)
    return data

def is_it_true(value):
  return value.lower() == 'true'

if __name__ == "__main__":
    app.run(host='0.0.0.0')
