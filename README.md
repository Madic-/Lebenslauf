# Lebenslauf

Mein [Lebenslauf in Markdown](https://raw.githubusercontent.com/Madic-/Lebenslauf/master/Lebenslauf.md), genauer gesagt in [pandoc Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown), verfasst.

Da ich all meine Notizen schon in [Markdown](https://en.wikipedia.org/wiki/Markdown) verfasse, hatte ich die Idee auch meinen Lebenslauf in Markdown zu schreiben. Mit Hilfe des Converters pandoc und [bisschen CSS](style.css) lässt sich daraus ein Human Ressources freundliches PDF Dokument erstellen. Beispieldokumente sind ebenfalls in diesem Repository.

* [Lebenslauf.html](Lebenslauf.html)
* [Lebenslauf.pdf](Lebenslauf.pdf)
* [Lebenslauf.txt](Lebenslauf.txt)

## Voraussetzung

Benötigte Pakete unter Arch Linux installieren

```bash
yay -Sy pandoc wkhtmltopdf-static
```

## Benutzung

```bash
make all
```

```bash
make Lebenslauf.html
```

```bash
make Lebenslauf.pdf
```

```bash
make Lebenslauf.txt
```

```bash
make clean
```
