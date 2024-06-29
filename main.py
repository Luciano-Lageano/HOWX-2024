##################################################################################
##           Luciano Santos - 27/06/2024 - 23:15                                ##
##                                                                              ##
##               SISTEMA DE SOLICITAÇÃO DE EPI                                  ##
##                      PEDRA BRANCA                                            ##
##################################################################################

# importação de bibliotecas e modulos do python
import streamlit as st
import streamlit as st;
import mysql.connector
import pandas as pd

##########################################
# conexão com o banco de dados
##########################################

conexao = mysql.connector.connect (
    host = 'localhost',
    user = 'root',
    password = '123456',
    database = 'db_pb_epi',
)
cursor = conexao.cursor()

## INICIO DO PROGRAMA

st.sidebar.title('Menu')
page = st.sidebar.selectbox('Selecione a opção',['Inicio','Solicitação EPI', 'Consulta'])

# CONDICÇÃO PARA VER QUAL PAGINA O USÚARIO SOLICITOU
if page == 'Inicio':
     st.image('img/pedrabranca.jpg')
elif page == 'Solicitação EPI':
    page == "Solicitação EPI"
    st.title("Solicitação de EPI")
# MONTAGEM DO FORMULÁRIO PARA SOLICITAÇÃO DO EPI
    with st.form(key="include_epi"):
        input_name = st.text_input(label="Digite seu nome:")
        input_calca = st.selectbox(label="Tamanho da calça:", options=[" ","36","38","40","42","44","46","48","50","52","54","56"])
        input_camisa = st.selectbox(label="Tamanho da camisa:", options=[" ","P","M","G","GG","XGG"])
        input_sapato = st.selectbox(label="Nro do Sapato:", options=[" ","36","37","38","39","40","41","42","43","44","45"])
        input_luva  = st.selectbox(label="Tamanho da luva:", options=[" ","P","M","G"])
        input_capacete  = st.selectbox(label="Tamanho do capacete:", options=[" ","56","58","60","62"])
        input_oculos = st.selectbox(label="Tipo de óculos:", options=[" ","Branco","Escuro","Amarelo"])
        input_button_submit = st.form_submit_button("Enviar")
# CLICANDO NO BOTAO ENVIAR
    if input_button_submit:
# INCLUSAO DOS CAMPOS DO FORMULARIO NO BANCO DE DADOS
        comando = f'INSERT INTO tbepi (nome, calca, camisa, sapato, luva, capacete, oculos) VALUES ( "{input_name}" , "{input_calca}" , "{input_camisa}" , "{input_sapato}" , "{input_luva}" , "{input_capacete}" , "{input_oculos}")'
        cursor.execute(comando) 
        conexao.commit()
# MENSAGEM DE ENVIO COM SUCESSO
        st.success("Solicitação enviada para o RH")
elif page == 'Consulta':
# CONSULTA OS REGISTROS
# COMANDO DE EXECUÇAO DE PESQUISA NO SQL
    comando = f'SELECT * FROM tbepi'
    cursor.execute(comando)
    linhas = cursor.fetchall()   
# MONTA UMA TABELA COM OS DADOS DA CONSULTA
    st.title("Listagem de Pedidos")
    df = pd.DataFrame(
        linhas,
        columns=['Registro','Nome', 'Calça', 'Camisa','Sapato Nr', 'Luva', 'Capacete','Óculos']
    )
    
    st.table(df)
    
  
 

cursor.close()
conexao.close()