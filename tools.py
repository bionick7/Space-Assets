""" 
Quick tool for generating random NRH Barcodes in a grid
"""

import io
import random
import shutil
import subprocess
import sys
import PIL
import PIL.Image
import PIL.ImageDraw


def copy_image_to_clipboard(image):
    """Best-effort copy a PIL image to the system clipboard."""
    png_bytes = io.BytesIO()
    image.save(png_bytes, format="PNG")
    png_bytes = png_bytes.getvalue()

    if sys.platform.startswith("linux"):
        if shutil.which("xclip"):
            subprocess.run(["xclip", "-selection", "clipboard", "-t", "image/png"], input=png_bytes, check=False)
            return True
        if shutil.which("wl-copy"):
            subprocess.run(["wl-copy", "--type", "image/png"], input=png_bytes, check=False)
            return True

    return False


def create_missing_outline_grid(size: int=200, line_width: int=10, missing_chance: float=0.35, 
                                n_rows: int=1, n_columns: int=1, spacing: int=20, seed: int=0):
    """Create a black image with transparent grid lines showing a 3x3 grid with some random lines removed."""
    if seed is not None:
        random.seed(seed)
        

    n_rows = max(1, n_rows)
    n_columns = max(1, n_columns)
    spacing = max(0, spacing)
    image_width = n_columns * size + (n_columns - 1) * spacing
    image_height = n_rows * size + (n_rows - 1) * spacing
    image = PIL.Image.new("RGBA", (image_width, image_height), (0, 0, 0, 0))
    draw = PIL.ImageDraw.Draw(image)

    step = size / 3
    line_positions = [step, step * 2]
    transparent = (0, 0, 0, 0)

    for row in range(n_rows):
        for column in range(n_columns):
            left = column * (size + spacing)
            top = row * (size + spacing)

            draw.rectangle((left, top, left + size, top + size), fill=(0, 0, 0, 255))

            for x in line_positions:
                for i in range(3):
                    if random.random() < missing_chance:
                        draw.line((left + x, top + i * step,
                                   left + x, top + (i + 1) * step),
                                  fill=transparent, width=line_width)

            for y in line_positions:
                for i in range(3):
                    if random.random() < missing_chance:
                        draw.line((left + i * step, top + y,
                                   left + (i + 1) * step, top + y),
                                  fill=transparent, width=line_width)

    image.show()
    copy_image_to_clipboard(image)
    return image


if __name__ == "__main__":
    create_missing_outline_grid(200, 10, 0.5, 2, 2, seed=None)


