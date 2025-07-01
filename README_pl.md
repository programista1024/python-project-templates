# Szablony projektów Python

To repozytorium zawiera gotowe szablony startowe dla aplikacji Python. Niezależnie od tego, czy tworzysz aplikację terminalową, desktopową czy API REST – ten zestaw ułatwi szybki start, oferując spójną strukturę katalogów oraz narzędzia do konfiguracji środowiska i zależności.

Projekt inspirowany popularnymi generatorami, takimi jak Spring Boot Initializer.

## 🚀 Główne cechy

- 🧰 Gotowe szablony:
  - `cli-app/` – aplikacja terminalowa (Typer + Rich)
  - `gui-app/` – aplikacja desktopowa (PySide6)
  - `api-server/` – API REST (FastAPI)
- 🔁 Skrypty shellowe do:
  - inicjalizacji projektu
  - tworzenia środowiska wirtualnego i instalacji zależności
- ✅ Przygotowane do typowania i lintowania (`mypy`, `pylint`)
- 🔧 Możliwość łatwego rozszerzania o własne szablony

## 📦 Szybki start

```bash
git clone https://github.com/programista1024/python-project-templates.git
cd python-project-templates

# Upewnij się, że skrypty są wykonywalne
chmod +x setup_env.sh init_project.sh

# Wygeneruj nowy projekt z szablonu
./init_project.sh --template gui-app --name moja_aplikacja

# Przejdź do projektu i zainstaluj środowisko
cd projects/moja_aplikacja
../../setup_env.sh
```

## 📁 Struktura repozytorium

```
python-project-templates/
├── init_project.sh       # Skrypt generujący projekt
├── setup_env.sh          # Skrypt konfigurujący środowisko wirtualne
├── templates/            # Szablony startowe
│   ├── cli-app/
│   ├── gui-app/
│   └── api-server/
└── projects/             # Lokalnie generowane projekty (ignorowane przez git)
```

> **Uwaga:** Katalog `projects/` jest obecnie pusty i znajduje się na liście `.gitignore`, więc jego zawartość nie jest śledzona przez Git.
> Ten katalog służy do lokalnego tworzenia projektów na podstawie szablonów.  
> Każdy użytkownik może bezpiecznie korzystać z tego katalogu do eksperymentów, nie wpływając na zawartość repozytorium.

## 📚 Dokumentacja
Szczegóły użycia, opcji i przykładów znajdziesz w katalogu docs/:

* docs/init_project.md — dokumentacja skryptu inicjującego projekt
* docs/setup_env.md — dokumentacja skryptu konfigurującego środowisko
* docs/templates.md — opis i użycie szablonów
* docs/usage_examples.md — przykładowe scenariusze i wskazówki

## 🧪 Testowanie szablonów bez generowania projektu

Możesz przetestować szablony przed utworzeniem projektu:

```bash
cd templates/cli-app       # lub gui-app, api-server
python3 -m venv venv
source venv/bin/activate   # Na Windows: venv\Scripts\activate
pip install -r requirements.txt
python main.py [wymagane_argumenty]
```

## 🤝 Współpraca

Zapraszamy do zgłaszania błędów i pomysłów! Prosimy o zapoznanie się z [CONTRIBUTING.md](CONTRIBUTING.md).

## 📜 Licencja

Projekt dostępny na licencji [MIT](LICENSE).

## 👤 Autor

Stworzony i rozwijany przez **Grzegorza Wieczerzaka**  
🌐 [www.wieczerzak.pl](https://www.wieczerzak.pl)  
🎓 [programista1024.pl](https://programista1024.pl)  
🧭 Oryginalne repozytorium GitHub:  
[github.com/programista1024/python-project-templates](https://github.com/programista1024/python-project-templates)