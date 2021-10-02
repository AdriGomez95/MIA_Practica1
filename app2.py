from flask import Flask
import psycopg2

app = Flask(__name__)


# Connect to your postgres DB
conn = psycopg2.connect("host=localhost dbname=postgres user=postgres password=123")

# Open a cursor to perform database operations
cur = conn.cursor()


@app.route("/")
def hello_world():
    # Ejecutamos una consulta
    cur.execute( "select * from prueba " )

    # Recorremos los resultados y los mostramos
    for nombre, apellidos in cur.fetchall() :
        print(nombre, apellidos)
    return {'data': "adri"}





#--> CARGA MASIVA (3)
@app.route("/cm")
def cm():
    #lugar y nombre del archivo
    file = "/home/adri/Escritorio/BlockbusterData.csv"

    with open(file, 'r', encoding = "latin-1") as f:

        next(f) #omite la primera linea que es la de encabezados
        #f, nombre de la tabla en la db, separador
        cur.copy_from(f, 'tabla_temporal', sep = ';')
        conn.commit() #necesario hacer commit con los cambios

    print("carga masiva exitosa") #esto lo muestra en consola
    return {'data': "carga masiva terminada"} #esto lo muestra en la pagina
    




#--> PARA ELIMINAR LAS TABLAS DE LA BASE DE DATOS (2)-(1)
@app.route("/limpiar_db")
def limpiar_db():

    cur.execute(open("./tablas_copia.sql", "r").read())
    conn.commit()

    print("base de datos limpia") 
    return {'data': "base de datos limpia"}
    


#--> CARGAR LAS TABLAS A LA BASDE DE DATOS (4)-(2)
@app.route("/cargar_db")
def cargar_db():

    cur.execute(open("./tablas.sql", "r").read())
    conn.commit()

    cur.execute("SELECT * FROM tabla_temporal")
    for cliente_nombre,cliente_correo,cliente_activo,cliente_f_registro,cliente_tienda_fav,cliente_direccion,cliente_c_postal,cliente_ciudad,cliente_pais,fecha_rentado,fecha_retorno,monto_pago,fecha_pago,empleado_nombre,empleado_correo,empleado_activo,empleado_tienda,empleado_usuario,empleado_contrasenia,empleado_direccion,empleado_c_postal,empleado_ciudad,empleado_pais,tienda_nombre,tienda_encargado,tienda_direccion,tienda_c_postal,tienda_ciudad,tienda_pais,tienda_pelicula,pelicula_nombre,pelicula_descripcion,pelicula_lanzamiento,pelicula_dias_renta,pelicula_costo_renta,pelicula_duracion,pelicula_costo_danio,pelicula_clasificacion,pelicula_lenguaje,pelicula_categoria,pelicula_actor in cur.fetchall():

        #cliente
        TABLA_pais(cliente_pais)
        TABLA_ciudad(cliente_c_postal,cliente_ciudad,cliente_pais)
        TABLA_direccion(cliente_direccion,cliente_ciudad)
        #TABLA_cliente(cliente_nombre,cliente_correo,cliente_activo,cliente_f_registro,cliente_tienda_fav)

        #empleado
        TABLA_pais(empleado_pais)
        TABLA_ciudad(empleado_c_postal,empleado_ciudad,empleado_pais)
        TABLA_direccion(empleado_direccion,empleado_ciudad)

        #tienda
        TABLA_pais(tienda_pais)
        TABLA_ciudad(tienda_c_postal,tienda_ciudad,tienda_pais)
        TABLA_direccion(tienda_direccion,tienda_ciudad)
        TABLA_tienda(tienda_nombre,tienda_direccion)

        #pelicula
        TABLA_idioma(pelicula_lenguaje)
        TABLA_actor(pelicula_actor)
        TABLA_categoria(pelicula_categoria)
        TABLA_pelicula(pelicula_nombre,pelicula_descripcion,pelicula_lanzamiento,pelicula_dias_renta,pelicula_costo_renta,pelicula_duracion,pelicula_costo_danio,pelicula_clasificacion,)
        TABLA_peli_idioma(pelicula_nombre,pelicula_lenguaje)
        TABLA_peli_categoria(pelicula_categoria,pelicula_nombre)
        TABLA_peli_actor(pelicula_actor,pelicula_nombre)

    print("base de datos cargada")
    return {'data': "base de datos terminada"} 
    





#--> PARA LIMPIAR LA TEMPORAL (1)
@app.route("/limpiar_temp")
def limpiar_temp():

    cur.execute(open("./tabla_temporal_copia.sql", "r").read())
    conn.commit()

    print("tabla temporal limpia") 
    return {'data': "tabla temporal limpia"}
    




#-----------------------------------------------------------------------------------------------------
#--------------------------- AQUI EMPIEZA A LLENAR LAS TABLAS ----------------------------------------
#-----------------------------------------------------------------------------------------------------

def TABLA_idioma(idioma):
    cur.execute(f"SELECT * FROM idioma WHERE idioma='{idioma}'")
    #si el dato no existe es 0
    dato_existe = len(cur.fetchall())
    if dato_existe == 0 and idioma != '-':
        cur.execute(f"INSERT INTO idioma (idioma) VALUES('{idioma}')")
        conn.commit()

def TABLA_pais(pais):
    cur.execute(f"SELECT * FROM pais WHERE nombre_pais='{pais}'")
    #si el dato no existe es 0
    dato_existe = len(cur.fetchall())
    if dato_existe == 0 and pais != '-':
        cur.execute(f"INSERT INTO pais (nombre_pais) VALUES('{pais}')")
        conn.commit()

def TABLA_actor(actor):
    if actor != '-':
        apellido = actor.split(" ")
        cur.execute(f"SELECT * FROM actor WHERE nombre_actor='{apellido[0]}' AND apellido_actor='{apellido[1]}'")
        #si el dato no existe es 0
        dato_existe = len(cur.fetchall())
        if dato_existe == 0 and actor != '-':
            cur.execute(f"INSERT INTO actor (nombre_actor, apellido_actor)  VALUES('{apellido[0]}','{apellido[1]}')")
            conn.commit

def TABLA_categoria(categoria):
    cur.execute(f"SELECT * FROM categoria WHERE categoria='{categoria}'")
    #si el dato no existe es 0
    dato_existe = len(cur.fetchall())
    if dato_existe == 0 and categoria != '-':
        cur.execute(f"INSERT INTO categoria (categoria) VALUES('{categoria}')")
        conn.commit()

def TABLA_pelicula(pelicula,sinopsis,lanzamiento,renta,costo,duracion,costo_danio,clasificacion):
    cur.execute(f"SELECT * FROM pelicula WHERE nombre_pelicula='{pelicula}'")
    #si el dato no existe es 0
    dato_existe = len(cur.fetchall())
    if dato_existe == 0 and pelicula != '-':
        cur.execute(f"INSERT INTO pelicula (nombre_pelicula,sinopsis,lanzamiento,renta_dias,costo,duracion,costo_danio,clasificacion)  VALUES('{pelicula}','{sinopsis}','{lanzamiento}','{renta}','{costo}','{duracion}','{costo_danio}','{clasificacion}')")
        conn.commit

def TABLA_ciudad(codigo_postal,nombre_ciudad,nombre_pais):
    cur.execute(f"SELECT * FROM ciudad WHERE nombre_ciudad='{nombre_ciudad}'")
    #si el dato no existe es 0
    dato_existe = len(cur.fetchall())
    if dato_existe == 0 and nombre_ciudad != '-':
        cur.execute(f"SELECT * FROM pais WHERE nombre_pais='{nombre_pais}'")
        idd_pais = cur.fetchall()
        if codigo_postal != '-':
            cur.execute(f"INSERT INTO ciudad (codigo_postal,nombre_ciudad,id_pais) VALUES('{codigo_postal}','{nombre_ciudad}','{idd_pais[0][0]}')")
        else:
            cur.execute(f"INSERT INTO ciudad (codigo_postal,nombre_ciudad,id_pais) VALUES('0','{nombre_ciudad}','{idd_pais[0][0]}')")
        conn.commit() 

def TABLA_direccion(direccion,ciudad):
    cur.execute(f"SELECT * FROM direccion WHERE direccion='{direccion}'")
    #si el dato no existe es 0
    dato_existe = len(cur.fetchall())
    if dato_existe == 0 and direccion != '-':
        cur.execute(f"SELECT * FROM ciudad WHERE nombre_ciudad='{ciudad}'")
        idd_ciudad = cur.fetchall()
        cur.execute(f"INSERT INTO direccion (direccion,id_ciudad) VALUES('{direccion}','{idd_ciudad[0][0]}')")
        conn.commit() 

def TABLA_tienda(tienda,direccion):
    cur.execute(f"SELECT * FROM tienda WHERE nombre_tienda='{tienda}'")
    #si el dato no existe es 0
    dato_existe = len(cur.fetchall())
    if dato_existe == 0 and tienda != '-':
        cur.execute(f"SELECT * FROM direccion WHERE direccion='{direccion}'")
        idd_direccion= cur.fetchall()
        cur.execute(f"INSERT INTO tienda (nombre_tienda,id_direccion) VALUES('{tienda}','{idd_direccion[0][0]}')")
        conn.commit() 

def TABLA_peli_categoria(categoria2,pelicula2):
    cur.execute(f"SELECT * FROM categoria WHERE categoria='{categoria2}'")
    idd_categoria = cur.fetchall()
    cur.execute(f"SELECT * FROM pelicula WHERE nombre_pelicula='{pelicula2}'")
    idd_pelicula = cur.fetchall()
    if len(idd_categoria) != 0 and len(idd_pelicula) != 0:
        cur.execute(f"SELECT * FROM categoria_pelicula WHERE id_categoria='{idd_categoria[0][0]}' AND id_pelicula='{idd_pelicula[0][0]}'")
        #si el dato no existe es 0
        dato_existe = len(cur.fetchall())
        if dato_existe == 0:
            cur.execute(f"INSERT INTO categoria_pelicula (id_categoria, id_pelicula) VALUES('{idd_categoria[0][0]}','{idd_pelicula[0][0]}')")
            conn.commit() 

def TABLA_peli_idioma(pelicula,idioma):
    cur.execute(f"SELECT * FROM pelicula WHERE nombre_pelicula='{pelicula}'")
    idd_pelicula = cur.fetchall()
    cur.execute(f"SELECT * FROM idioma WHERE idioma='{idioma}'")
    idd_idioma = cur.fetchall()
    if len(idd_pelicula) != 0 and len(idd_idioma) != 0:
        cur.execute(f"SELECT * FROM idioma_pelicula WHERE id_pelicula='{idd_pelicula[0][0]}' AND id_idioma='{idd_idioma[0][0]}'")
        #si el dato no existe es 0
        dato_existe = len(cur.fetchall())
        if dato_existe == 0:
            cur.execute(f"INSERT INTO idioma_pelicula (id_pelicula,id_idioma) VALUES('{idd_pelicula[0][0]}','{idd_idioma[0][0]}')")
            conn.commit() 

def TABLA_peli_actor(actor,pelicula):
    cur.execute(f"SELECT * FROM actor WHERE nombre_actor='{actor}'")
    idd_actor = cur.fetchall()
    cur.execute(f"SELECT * FROM pelicula WHERE nombre_pelicula='{pelicula}'")
    idd_pelicula = cur.fetchall()
    if len(idd_actor) != 0 and len(idd_pelicula) != 0:
        cur.execute(f"SELECT * FROM actor_pelicula WHERE id_actor='{idd_actor[0][0]}' AND id_pelicula='{idd_pelicula[0][0]}'")
        #si el dato no existe es 0
        dato_existe = len(cur.fetchall())
        if dato_existe == 0:
            cur.execute(f"INSERT INTO actor_pelicula (id_actor,id_pelicula) VALUES('{idd_actor[0][0]}','{idd_pelicula[0][0]}')")
            conn.commit() 
    





