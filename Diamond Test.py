from tkinter import *

class Diamond:
    def __init__(self, x, y, canvas):
        self.x = x
        self.y = y
        self.canvas = canvas
        self.diamond_image = PhotoImage(file="Assets/Texture/SpriteDiamond.png")
        self.diamond_image = self.diamond_image.zoom(2)
        self.diamond_size = self.diamond_image.width()
        self.draw()

    def draw(self):
        self.canvas_object = self.canvas.create_image(self.x, self.y, anchor=NW, image=self.diamond_image)

class Mapa:
    def __init__(self, map_matrix):
        self.map_matrix = map_matrix
        self.dirt_image = PhotoImage(file="Assets/Texture/SpriteTonnel.png")
        self.dirt_image = self.dirt_image.zoom(2)
        self.tile_size = self.dirt_image.width()
        self.width = len(map_matrix[0]) * self.tile_size
        self.height = len(map_matrix) * self.tile_size
        self.tonnel_image = PhotoImage(file="Assets/Texture/BlackTonnel.png")
        self.tonnel_image = self.tonnel_image.zoom(2)
        self.diamonds = []
        self.canvas = canvas


    def draw(self, canvas):
        canvas.config(width=self.width, height=self.height + 50, bg='black')
        for y, row in enumerate(self.map_matrix):
            for x, cell in enumerate(row):
                if cell == 0:
                    canvas.create_image(x * self.tile_size, self.height - (y + 1) * self.tile_size + self.tile_size / 2,
                                        anchor=NW, image=self.dirt_image)
                else:
                    canvas.create_image(x * self.tile_size, self.height - (y + 1) * self.tile_size + self.tile_size / 2,
                                        anchor=NW, image=self.tonnel_image)
        self.draw_diamonds()  # Add this line to draw all the diamonds on the map

    def draw_diamonds(self):
        for diamond in self.diamonds:
            diamond.draw()

    def place_diamond(self, event, diamond=None):
        if not diamond:
            x = event.x
            y = event.y
            diamond = Diamond(x, y, self.canvas)
        self.diamonds.append(diamond)
        diamond.draw()

    def remove_diamond(self, diamond):
        self.diamonds.remove(diamond)
        self.canvas.delete(diamond.canvas_object)

# Create the main window
root = Tk()
root.resizable(False, False)
root.title("Digger")

# Create the Canvas widget for displaying the map
canvas = Canvas(root)
canvas.pack()
canvas.focus_set()

# Define the map matrix
map_matrix = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1],
    [0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
    [0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0],
    [0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
]

class Player:
    def __init__(self, x, y, mapa, canvas):
        self.x = x
        self.y = y
        self.mapa = mapa
        self.player_image = PhotoImage(file="Assets/Texture/Carych.png")
        self.player_image = self.player_image.zoom(2)
        self.player_size = self.player_image.width()
        self.map_matrix = mapa.map_matrix
        self.canvas = canvas
        self.score = 0
        self.score_label = Label(root, text="Score: 0", fg="white", bg="black", font=("Arial", 14))
        self.score_label.pack()
        self.draw()

    def draw(self):
        self.canvas_object = self.canvas.create_image(self.x, self.y, anchor=NW, image=self.player_image)

    def move(self, dx, dy):
        # Вычисляем новые координаты игрока
        new_x = self.x + dx
        new_y = self.y + dy

        # Проверяем, что новые координаты не выходят за пределы холста
        if (
                new_x >= 0 and new_x <= self.canvas.winfo_width() - self.player_size
                and new_y >= 0 and new_y <= self.canvas.winfo_height() - self.player_size
        ):

            # Проверяем, что новые координаты не находятся на камне
            tile_x = new_x // mapa.tile_size
            tile_y = (mapa.height - new_y) // mapa.tile_size
            if self.map_matrix[tile_y][tile_x] == 1:
                return

            # Проверяем, что новые координаты не находятся на алмазе
            for diamond in self.mapa.diamonds:
                if diamond.x == new_x and diamond.y == new_y:
                    self.score += 1
                    self.score_label.config(text=f"Score: {self.score}")
                    self.mapa.remove_diamond(diamond)
                    break
                    # Обновляем координаты игрока
            self.x = new_x
            self.y = new_y
            # Перемещаем игрока на новое место на карте
            self.canvas.coords(self.canvas_object, self.x, self.y)

            # Определяем, на какой ячейке карты находится игрок
            row = int((self.mapa.height - self.y) / self.mapa.tile_size)
            col = int(self.x / self.mapa.tile_size)

            # Если ячейка содержит землю (0), то заменяем ее на другой блок (1)
            if self.map_matrix[row][col] == 0:
                self.map_matrix[row][col] = 1
                self.mapa.draw(self.canvas)  # Redraw the map to reflect the changes
                self.draw()

    def on_key_press(self, event):
        if event.keysym == 'Up':
            self.move(0, -7)
        elif event.keysym == 'Down':
            self.move(0, 7)
        elif event.keysym == 'Left':
            self.move(-7, 0)
        elif event.keysym == 'Right':
            self.move(7, 0)

mapa = Mapa(map_matrix)
mapa.draw(canvas)
player = Player(260, 160, mapa, canvas)
canvas.bind('<KeyPress>', player.on_key_press)
canvas.bind('<Button-1>', mapa.place_diamond)

# Place six diamonds on specific coordinates
canvas.event_generate('<Button-1>', x=270, y=450)
canvas.event_generate('<Button-1>', x=200, y=200)
canvas.event_generate('<Button-1>', x=300, y=300)
canvas.event_generate('<Button-1>', x=400, y=400)
canvas.event_generate('<Button-1>', x=500, y=500)
canvas.event_generate('<Button-1>', x=600, y=600)

# Запускаем главный цикл обработки событий
root.mainloop()
