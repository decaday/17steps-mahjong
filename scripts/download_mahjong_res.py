import requests

def download_tile_images(tiles):
  """Downloads images for the given list of tiles.

  Args:
    tiles: A list of tile strings (e.g., "1m", "2p").
  """

  base_url = "https://cdn.tenhou.net/2/t/{}.gif"
  for tile in tiles:
    url = base_url.format(tile)
    response = requests.get(url)
    with open(f"./download/tiles/tile_{tile}.gif", "wb") as f:
      f.write(response.content)

tiles = [
  # 万子 1m-9m, 没有0m红5万
  "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
  # 筒子 1p-9p, 没有0p红5筒
  "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
  # 索子 1s-9s, 没有0s红5索
  "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
  # 风牌 东南西北 1z-4z // 三元牌 白发中 5z-7z
  "1z", "2z", "3z", "4z", "5z", "6z", "7z"
]

download_tile_images(tiles)
