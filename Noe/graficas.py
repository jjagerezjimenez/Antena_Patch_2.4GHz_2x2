""" Autor:  Vale, Fernando Alexis.
    Modificación:  Defrancesco Castro, Maria Noelia.
    Facultad de Ciencias Exactas y Tecnologia - UNT.
    Año: 2025.
"""

import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as nppip 


#   Función para usar cuando el dataset no se encuentre separado por comas
def convert_csv_space_to_comma(input_patch,output_patch):
    df = pd.read_csv(input_patch, delim_whitespace = True)
    df.to_csv(output_patch,index = False)

#   Se define una constante
constant = 1000000000

#   Direccion del CSV del dataset de S11 de la antena
measurement_csv_address = './Datasets/Data_S11_Analizador.csv'
simulation_csv_address = './Datasets/Data_S11_CST.csv'

#   Direccion del CSV del dataset de VSWR de la antena
vswr_measurement = './Datasets/Data_VSWR_Analizador.csv'
vswr_simulation = './Datasets/Data_VSWR_CST.csv'

#   Se leen los datasets
measurement_data = pd.read_csv(measurement_csv_address)
measurement_data['dB'] = -1*measurement_data['dB']

simulation_data = pd.read_csv(simulation_csv_address)
simulation_data['Frequency'] *= constant

simulation_data.columns = simulation_data.columns.str.strip()
print(simulation_data.columns)
print(simulation_data.head())

##############  GRAFICA DEL S11 ############## 
plt.figure(figsize=(15, 8))
sns.lineplot(data = simulation_data, x = 'Frequency', y = 'dB', label = 'simulado')
sns.lineplot(data = measurement_data, x = 'Frequency', y = 'dB', label = 'medido')

#   Puntos a marcar
def marcar_punto(df, freq_ghz, xcol, ycol, label_text, color):
    #   Permite buscar la fila más cercana a la frecuencia deseada
    idx = (df[xcol] - freq_ghz).abs().idxmin()
    x_val = df.loc[idx, xcol]
    y_val = df.loc[idx, ycol]
    plt.scatter(x_val, y_val, color='black', zorder=5)
    plt.annotate(f"{label_text}\n{ycol}: {y_val:.2f} dB", 
                 (x_val, y_val), textcoords="offset points",
                 xytext=(+10, -10), ha='left', color='black', fontsize=10)

#   Marcadores de S11 en la frecuencia deseada
marcar_punto(measurement_data, 2544000000, 'Frequency', 'dB', 'frec: 2.54 GHz', 'black')
marcar_punto(simulation_data, 2243900000, 'Frequency', 'dB', 'frec: 2.24 GHz', 'black')

plt.title('S-Parameters')
plt.xlabel('Frequency [GHz]')
plt.ylabel('S11 [dB]')
plt.grid(True)
plt.ylim(top=0)
plt.legend()


##############  GRAFICA DEL VSWR ############## 
#   Función para usar cuando el dataset no se encuentre separado por comas 
vswr_simulation_data = pd.read_csv(vswr_simulation)
vswr_simulation_data['Frequency'] *= constant
vswr_measurement_data = pd.read_csv(vswr_measurement)

#   Gráfica
plt.figure(figsize=(15,8))
sns.lineplot(data = vswr_simulation_data, x = 'Frequency', y = 'VSWR', label = 'simulado')
sns.lineplot(data = vswr_measurement_data, x = 'Frequency', y = 'VSWR', label = 'medido')

def marcar_punto(df, freq_ghz, xcol, ycol, label_text, color):
    idx = (df[xcol] - freq_ghz).abs().idxmin()
    x_val = df.loc[idx, xcol]
    y_val = df.loc[idx, ycol]
    
    plt.scatter(x_val, y_val, color='black', zorder=5)
    
    #   Se define la unidad (GHz) automáticamente
    unidad = 'dB' if 'dB' in ycol.upper() else ''
    texto_valor = f"{ycol}: {y_val:.2f} {unidad}" if unidad else f"{ycol}: {y_val:.2f}"
    
    plt.annotate(f"{label_text}\n{texto_valor}", 
                 (x_val, y_val),
                 textcoords="offset points", xytext=(20, -30),
                 ha='center', color='black', fontsize=10)

# Marcadores del VSWR en la frecuencia deseada
marcar_punto(vswr_measurement_data, 2544000000, 'Frequency', 'VSWR', 'frec: 2.54 GHz', 'black')
marcar_punto(vswr_simulation_data, 2243900000, 'Frequency', 'VSWR', 'frec: 2.24 GHz', 'black')

plt.title('Voltage Standing Wave Ratio (VSWR)')
plt.ylabel('VSWR')
plt.xlabel('Frequency [GHz]')
plt.ylim(top=13)
plt.grid(True)
plt.legend()
plt.show()