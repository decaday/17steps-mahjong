  // https://cdn.tenhou.net/2/t/${}.gif

    val tiles = List(
      // 万子 1m-9m, 其中0m是红5万
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      "1m", "2m", "3m", "4m", "0m", "6m", "7m", "8m", "9m",
      // 筒子 1p-9p, 其中0p是红5筒
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      "1p", "2p", "3p", "4p", "0p", "6p", "7p", "8p", "9p",
      // 索子 1s-9s, 其中0s是红5索
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      "1s", "2s", "3s", "4s", "0s", "6s", "7s", "8s", "9s",
      // 风牌 东南西北 1z-4z // 三元牌 白发中 5z-7z
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
    )
    
    val tiles2 = List(
      // 万子 1m-9m, 没有0m红5万
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      // 筒子 1p-9p, 没有0p红5筒
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      // 索子 1s-9s, 没有0s红5索
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      // 风牌 东南西北 1z-4z // 三元牌 白发中 5z-7z
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
      "1z", "2z", "3z", "4z", "5z", "6z", "7z",
    )