1. setState

        setState(() {
            movieDetail = data;
            if (paletteGenerator.darkVibrantColor != null) {
                pageColor = paletteGenerator.darkVibrantColor.color;
            } else {
                pageColor = Color(0xff35374c);
            }
            // pageColor =paletteGenerator.dominantColor?.color;
        });