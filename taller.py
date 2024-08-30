#librerias

import tkinter as tk 
import tkinter.font as tkFont
from tkinter import *
from tkinter import messagebox
from tkinter import ttk
import pymysql

# Estética de la pantalla
ventana = tk.Tk()    
ventana.resizable(1, 1)  # modificar 
ventana.geometry("1200x900")  # Tamaño
ventana.config(bg="white")  # Color
ventana.title("Taller Mecánico")  # Título

# Campo de búsqueda
busqueda = Entry(ventana, font="Arial 18 ", bg='#aaaaaa',fg="black", width=60)
busqueda.place(x=120, y=130)

encabezado = Label(ventana, bg="#aaaaaa",padx=900, pady=50)
encabezado.place(x=0, y=0)


def muestra(termino_busqueda=""): 
    # Conexión a la base de datos y ejecución del query
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='taller')
    cursor = conn.cursor()
    
    if termino_busqueda:
        query = 'SELECT cantidad, numero_de_serie, nombre, descripcion FROM herramientas WHERE nombre LIKE %s'
        cursor.execute(query, ('%' + termino_busqueda + '%',))
    else:
        query = 'SELECT cantidad, numero_de_serie, nombre, descripcion FROM herramientas'
        cursor.execute(query)
    
    herramientas = cursor.fetchall()
    conn.close()
    return herramientas  # Regresa el valor de herramientas (la base de datos)

def herramientas():
    global tree
    termino_busqueda = busqueda.get()  # Obtener el texto ingresado en el campo de búsqueda
    filas = muestra(termino_busqueda)
    
    if not filas:
        messagebox.showerror("UPS!!", "El articulo no existe")
        return

    tree.delete(*tree.get_children())
    for encabezado in encabezados:
        tree.heading(encabezado, text=encabezado)
        if encabezado == 'DESCRIPCION':
            tree.column(encabezado, width=500, anchor=CENTER)
        else:
            tree.column(encabezado, width=200, anchor=CENTER)
    for fila in filas:
        tree.insert("", "end", values=fila)
    tree.pack(padx=10, pady=10)
    tree.bind("<<TreeviewSelect>>")

encabezados = ('CANTIDAD', 'NUMERO DE SERIE', 'NOMBRE', 'DESCRIPCION')

margen_frame = tk.Frame(ventana, bg="#aaaaaa")
margen_frame.place(x=100, y=250, width=1000, height=200) 
tree = ttk.Treeview(margen_frame, columns=encabezados, show='headings')  
herramientas()

# Botón de búsqueda
#imagen de la lupa
lupa = PhotoImage(file="lupa6.png")

# Crear el botón con la imagen
boton_buscar = Button(ventana, bg='white', image=lupa, command=herramientas)
boton_buscar.place(x=930, y=130)

# Campo de bienvenida
bienvenida = Label(ventana, bg="#aaaaaa", text="¡BIENVENIDO!",font="Courier 50 bold", fg="white")
bienvenida.place(x=350, y=25)

# Botón "todo"
def mostrarTodo():
    busqueda.delete(0, END)  # Limpiar búsqueda
    herramientas()         #listaArticulos sin filtro
    messagebox.showinfo("taller", "Este es el inventario")  # Mostrar el mensaje

todo = Button(ventana, bg='#aaaaaa', text="MOSTRAR TODO", font="Courier 12", command=mostrarTodo)
todo.place(x=1020, y=130)

# Barra de desplazamiento 
scrollbar_y = ttk.Scrollbar(ventana, orient="vertical", command=tree.yview)
tree.configure(yscrollcommand=scrollbar_y.set)
scrollbar_y.place(in_=tree, relx=1.0, relheight=1.0)
    


ventana.mainloop()  # Ejecución de la pantalla