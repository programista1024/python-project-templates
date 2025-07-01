# Szablony projektów Python

To repozytorium zawiera gotowe szablony startowe dla aplikacji Python. Niezależnie od tego, czy tworzysz aplikację terminalową, desktopową czy API REST – ten zestaw ułatwi szybki start, oferując spójną strukturę katalogów oraz narzędzia do konfiguracji środowiska i zależności.

Projekt inspirowany popularnymi generatorami, takimi jak Spring Boot Initializer.

## 🚀 Główne cechy

- 🧰 Gotowe szablony:
  - `cli-app/` – aplikacja terminalowa (Typer + Rich)
  - `gui-app/` – aplikacja desktopowa (PySide6)
  - `api-server/` – API REST (FastAPI)
- 🔁 Wspólne skrypty:
  - Tworzenie środowiska `venv`
  - Instalacja zależności
  - Generowanie uporządkowanej struktury projektu
- ✅ Przygotowane do typowania i lintowania (`mypy`, `pylint`)
- 🔧 Możliwość łatwego rozszerzania o własne szablony

## 📦 Jak używać?

```bash
git clone https://github.com/programista1024/python-project-templates.git
cd python-project-templates

# Upewnij się, że skrypty są wykonywalne
chmod +x setup_env.sh init_project.sh

# Wygeneruj nowy projekt z szablonu
./init_project.sh --template gui-app --name moja_aplikacja

# Przejdź do projektu i zainstaluj środowisko
cd projects/moja_aplikacja
./setup_env.sh
```

## 📁 Struktura repozytorium

```
python-project-templates/
├── init_project.sh       # Generator projektów
├── setup_env.sh          # Instalacja venv i zależności
├── templates/            # Szablony projektów
│   ├── cli-app/
│   ├── gui-app/
│   └── api-server/
└── projects/             # Wygenerowane projekty
```

> **Uwaga:** Katalog `projects/` znajduje się na liście `.gitignore` i nie jest śledzony przez Git.  
> Służy on do lokalnego tworzenia projektów na podstawie szablonów.  
> Każdy użytkownik może bezpiecznie korzystać z tego katalogu do eksperymentów, nie wpływając na zawartość repozytorium.

## 📁 templates/

Ten katalog zawiera gotowe do użycia szablony startowe projektów w Pythonie. Możesz wygenerować nowy projekt, kopiując wybrany szablon do katalogu `projects/`.

👉 Każdy szablon zawiera:
- Główny skrypt (`main.py`)
- Minimalny plik `requirements.txt`
- Opcjonalny folder `.vscode` dla użytkowników Visual Studio Code

---

## 🧪 Testowanie szablonów bez generowania projektu

Jeśli chcesz przetestować szablon startowy przed wygenerowaniem projektu:

1. Przejdź do wybranego katalogu szablonu, np.:

   ```bash
   cd templates/cli-app
   ```

2. Utwórz i aktywuj środowisko wirtualne:

   ```bash
   python3 -m venv venv
   source venv/bin/activate  # W systemie Windows: venv\Scripts\activate
   ```

3. Zainstaluj wymagane zależności:

   ```bash
   pip install -r requirements.txt
   ```

4. Uruchom plik startowy:

   ```bash
   python main.py hello Grzegorz
   ```

Każdy szablon zawiera własny plik `requirements.txt` z minimalnymi wymaganiami.

## 🤝 Współpraca

- Masz pomysł lub zauważyłeś błąd? Otwórz zgłoszenie lub pull request.
- Stosuj się do konwencji PEP8 i dokumentuj kod.
- Współpraca mile widziana — szczegóły wkrótce w [CONTRIBUTING.md](CONTRIBUTING.md).

## 📜 Licencja

Projekt dostępny na licencji [MIT](LICENSE).

## 👤 Autor

Stworzony i rozwijany przez **Grzegorza Wieczerzaka**  
🌐 [www.wieczerzak.pl](https://www.wieczerzak.pl)  
🎓 [programista1024.pl](https://programista1024.pl)  
🧭 Oryginalne repozytorium GitHub:  
[github.com/programista1024/python-project-templates](https://github.com/programista1024/python-project-templates)