from PyQt5.QtWidgets import QApplication, QWidget, QHBoxLayout, QSlider, QLabel, QSizePolicy, QSpacerItem, QVBoxLayout
from PyQt5.QtCore import Qt
from numpy import arange, sin, cos, pi
import pyqtgraph as pg
import numpy as np
import sys

class Slider(QWidget):
    def __init__(self, minimum, maximum, parent=None):
        super(Slider, self).__init__(parent=parent)
        self.verticalLayout = QHBoxLayout(self)
        self.label = QLabel(self)
        self.verticalLayout.addWidget(self.label)
        self.horizontalLayout = QHBoxLayout()
        spacerItem = QSpacerItem(0, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)
        self.slider = QSlider(self)
        # changed here for horizontal
        self.slider.setOrientation(Qt.Horizontal)
        self.horizontalLayout.addWidget(self.slider)
        spacerItem1 = QSpacerItem(0, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.resize(self.sizeHint())

        self.minimum = minimum
        self.maximum = maximum
        self.slider.valueChanged.connect(self.setLabelValue)
        self.x = None
        self.setLabelValue(self.slider.value())

    def setLabelValue(self, value):
        self.x = self.minimum + (float(value) / (self.slider.maximum() - self.slider.minimum())) * (
        self.maximum - self.minimum)
        self.label.setText("{0:.4g}".format(self.x))

class Plot2D():
    def __init__(self):
        self.traces = dict()

        #QtGui.QApplication.setGraphicsSystem('raster')
        #self.app = QtGui.QApplication([])
        #mw = QtGui.QMainWindow()
        #mw.resize(800,800)

        self.win = pg.GraphicsWindow(title="Sine waves plotting")
        self.win.resize(1000,600)
        self.win.setWindowTitle('Sine waves')

        # Enable antialiasing for prettier plots
        pg.setConfigOptions(antialias=True)

        self.canvas = self.win.addPlot(title="Task")

    def start(self):
        if (sys.flags.interactive != 1) or not hasattr(QtCore, 'PYQT_VERSION'):
            QtGui.QApplication.instance().exec_()

    def trace(self,name,dataset_x,dataset_y):
        if name in self.traces:
            self.traces[name].setData(dataset_x,dataset_y)
        else:
            self.traces[name] = self.canvas.plot(pen='y')

class Widget(QWidget):
    def __init__(self, parent=None):
        super(Widget, self).__init__(parent=parent)
        self.horizontalLayout = QHBoxLayout(self)
        self.w1 = Slider(-10, 10)
        self.horizontalLayout.addWidget(self.w1)

        self.w2 = Slider(-1, 1)
        self.horizontalLayout.addWidget(self.w2)

        self.w3 = Slider(-10, 10)
        self.horizontalLayout.addWidget(self.w3)

        self.w4 = Slider(-10, 10)
        self.horizontalLayout.addWidget(self.w4)

        # self.win = pg.GraphicsWindow(title="Basic plotting examples")
        # self.horizontalLayout.addWidget(self.win)
        # self.p6 = self.win.addPlot(title="My Plot")
        # self.curve = self.p6.plot(pen='r')
        # self.update_plot()
        self.win = pg.GraphicsWindow(title="Basic plotting examples")
        self.win.resize(1000,600)
        self.win.setWindowTitle('pyqtgraph example: Plotting')

        # Enable antialiasing for prettier plots
        pg.setConfigOptions(antialias=True)

        self.canvas = self.win.addPlot(title="Pytelemetry")
        self.horizontalLayout.addWidget(self.win)

        self.w1.slider.valueChanged.connect(self.update_plot)
        self.w2.slider.valueChanged.connect(self.update_plot)
        self.w3.slider.valueChanged.connect(self.update_plot)
        self.w4.slider.valueChanged.connect(self.update_plot)

    def update_plot(self):
        a = self.w1.x
        b = self.w2.x
        c = self.w3.x
        d = self.w4.x
        x = np.linspace(0, 10, 100)
        data = a + np.sin(x + c * np.pi / 180) * np.exp(-b * x) * d
        #self.curve.setData(data)
        print(data)

    def trace(self,name,dataset_x,dataset_y):
        if name in self.traces:
            self.traces[name].setData(dataset_x,dataset_y)
        else:
            self.traces[name] = self.canvas.plot(pen='y')


if __name__ == '__main__':
    app = QApplication(sys.argv)
    w = Widget()
    w.show()
    sys.exit(app.exec_())
