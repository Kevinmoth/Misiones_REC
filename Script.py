import networkx as nx
import matplotlib.pyplot as plt


# Esta es una matriz de adyacencia, y es la forma matemática de representar un grafo
matriz_adyacencia = [
    [0, 28, 70, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [28, 0, 0, 44, 0, 0, 73, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [70, 0, 0, 73, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [83, 44, 73, 0, 0, 42, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 30, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 42, 47, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 73, 0, 27, 0, 69, 0, 67, 79, 81, 0, 0, 0, 0, 0, 0, 0],
    [0, 38, 0, 0, 0, 0, 67, 0, 0, 105, 89, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 79, 0, 0, 57, 0, 91, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 81, 105, 57, 0, 54, 103, 97, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 89, 0, 54, 0, 0, 49, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 91, 103, 0, 0, 138, 115, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 49, 138, 0, 0, 25, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 102, 0, 144],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 102, 0, 99, 151],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 91],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 151, 91, 0]
]

# Le damos nombres a los nodos
nombres_nodos = {
    "Posadas": 0,
    "Candelaria": 1,
    "Apostoles": 2,
    "Alem": 3,
    "Concepcion": 4,
    "San Javier": 5,
    "Obera": 6,
    "San Ignacio": 7,
    "25 de Mayo": 8,
    "Cainguas": 9,
    "Gral S.Martin": 10,
    "Guarani": 11,
    "Montecarlo": 12,
    "San Pedro": 13,
    "El Dorado": 14,
    "Iguazu": 15,
    "Gral.Belgrano": 16
}

# Definimos la función que va a generar las aristas, además usando la librería networkx, se calcula la distancia y la ruta más corta:
def encontrar_ruta_mas_corta(matriz, nodo_inicial, nodo_final):
    nodos = len(matriz)
    G = nx.Graph()

    for i in range(nodos):
        for j in range(nodos):
            if matriz[i][j] > 0:
                G.add_edge(list(nombres_nodos.keys())[list(nombres_nodos.values()).index(i)],
                           list(nombres_nodos.keys())[list(nombres_nodos.values()).index(j)],
                           weight=matriz[i][j])

    shortest_path = nx.shortest_path(G, source=nodo_inicial, target=nodo_final, weight='weight')
    shortest_distance = nx.shortest_path_length(G, source=nodo_inicial, target=nodo_final, weight='weight')

    return shortest_path, shortest_distance

# Le pedimos al usuario los nombres de nodos inicial y final
nodo_inicial = input("Ingresa el nodo o departamento inicial: ")
nodo_final = input("Ingresa el nodo o departamento de destino: ")

# Convertir la primera letra de la entrada del usuario a mayúsculas y el resto a minúsculas
nodo_inicial = nodo_inicial[0].upper() + nodo_inicial[1:].lower()
nodo_final = nodo_final[0].upper() + nodo_final[1:].lower()

# Llamamos a nuestra función encontrar_ruta_mas_corta(), almacenamos los resultados y los mostramos en pantalla.
ruta_mas_corta, distancia_mas_corta = encontrar_ruta_mas_corta(matriz_adyacencia, nodo_inicial, nodo_final)

print(f"Ruta más corta: {ruta_mas_corta}")
print(f"Distancia más corta: {distancia_mas_corta} Kilómetros")
print(f"El viaje durará una media de: {(distancia_mas_corta)*60/6600} hs")

# Con la librería networkx, se dibuja el grafo
G = nx.Graph()

for i in range(len(matriz_adyacencia)):
    for j in range(i + 1, len(matriz_adyacencia)):
        if matriz_adyacencia[i][j] > 0:
            G.add_edge(list(nombres_nodos.keys())[list(nombres_nodos.values()).index(i)],
                       list(nombres_nodos.keys())[list(nombres_nodos.values()).index(j)],
                       weight=matriz_adyacencia[i][j])

# Parámetros vectoriales para que el grafo tenga la forma del mapa
pos = {
    "Posadas": (31, -191),
    "Candelaria": (133, -135),
    "Apostoles": (86, -294),
    "Alem": (203, -233),
    "Concepcion": (96, -373),
    "San Javier": (199, -330),
    "Obera": (316, -247),
    "San Ignacio": (255, -110),
    "25 de Mayo": (445, -198),
    "Cainguas": (434, -106),
    "Gral S.Martin": (327, -29),
    "Guarani": (590, -98),
    "Montecarlo": (422, 15),
    "San Pedro": (640, 16),
    "El Dorado": (411, 86),
    "Iguazu": (477, 173),
    "Gral.Belgrano": (617, 146),
}

# Asigno los colores del grafo (rojo para la ruta más corta, gris para las demás)
colores = ['red' if (u, v) in zip(ruta_mas_corta, ruta_mas_corta[1:]) else 'gray' for u, v in G.edges()]
aristas = {(u, v): d['weight'] for u, v, d in G.edges(data=True)}

# Mostramos en un mapa de vectores el gráfico generado
nx.draw(G, pos, with_labels=True, node_size=500, node_color='skyblue', font_size=8, edge_color=colores)
nx.draw_networkx_edge_labels(G, pos, edge_labels=aristas, font_size=6)
plt.title("Recorrido a realizar en el grafo")
plt.show()
