# magnetlinkqbittorrent
These two scripts designed to extract magnet links from html-complete files from jackett, and inject them into your qbittorrent via qbittorrent-cli

prerequisites:
jackett
qbittorrent
qbittorrent-cli already connected to your qbittorrent.

extractmagnets.sh

This script assumes you are using jackett to find your torrent magnet links and saving them in a html complete file. It may work if you are using other methods, but I have not tested those, and I don't care. Feel free to modify this to use in whatever environment you are using.

usage:
chmod +x ./estractmagnets.sh
./extractmagnets.sh $your-html-file.html $your-extract-file.magnet

The output should be nothing if there are no errors.
the result should be a file containing individual lines of magnet: links.

injectmagnets.sh

This script assumes you have already extracted the magnet links from the html file created previously. The file will have a full magnet link, one per line, for injection to your qbittorrent via the qbt command. Feel free to modify this to use in whatever environment you are using.

usage: 
chmod +x ./injectmagnets.sh
./injectmagnets.sh $your-extract-file.magnet

The output should be nothing unless there are errors.
The result should be each available magnet link are injected into your qbittorrent. you can check this with the following command:
qbt torrent list
