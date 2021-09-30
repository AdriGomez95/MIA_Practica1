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





#--> CARGA MASIVA
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
    


#--> CARGAR LAS TABLAS DE LA BASDE DE DATOS
@app.route("/cargar_db")
def cargar_db():

    cur.execute(open("./tablas.sql", "r").read())
    conn.commit()

    cur.execute("SELECT * FROM tabla_temporal")
    for cliente_nombre,cliente_correo,cliente_activo,cliente_f_registro,cliente_tienda_fav,cliente_direccion,cliente_c_postal,cliente_ciudad,cliente_pais,fecha_rentado,fecha_retorno,monto_pago,fecha_pago,empleado_nombre,empleado_correo,empleado_activo,empleado_tienda,empleado_usuario,empleado_contrasenia,empleado_direccion,empleado_c_postal,empleado_ciudad,empleado_pais,tienda_nombre,tienda_encargado,tienda_direccion,tienda_c_postal,tienda_ciudad,tienda_pais,tienda_pelicula,pelicula_nombre,pelicula_descripcion,pelicula_lanzamiento,pelicula_dias_renta,pelicula_costo_renta,pelicula_duracion,pelicula_costo_danio,pelicula_clasificacion,pelicula_lenguaje,pelicula_categoria,pelicula_actor in cur.fetchall():
        
        print("")

    print("base de datos cargada") #esto lo muestra en consola
    return {'data': "base de datos terminada"} #esto lo muestra en la pagina
    




