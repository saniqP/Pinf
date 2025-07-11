from Resources.shfts import stats_shift
import pygame as py


def init():
    py.init()
    screen = py.display.set_mode((800, 600))
    py.display.set_caption('Snz')
    clock = py.time.Clock()

    stats = {
        'tick': stats_shift.read('Resources/Assets', 'tick'),
        'lives': stats_shift.read('Resources/Assets', 'lives')}

    run = True


    while run:
        for ev in py.event.get():
            if ev.type == py.QUIT:
                run = False
        
        clock.tick(int(stats['tick']))
        py.display.update()

if __name__ == "__main__":
    init()

    