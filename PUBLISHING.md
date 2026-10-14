# GitHub'a açık depo olarak yayımlama

Bu paket, Github'da yeni depo açmak için hazırdır. Depo adı önerisi: `claude-code-5-skills-tr`.

## GitHub CLI ile (önerilen)

1. https://cli.github.com/ adresinden `gh` kurulu olsun.
2. Hesabınızla giriş yapın:

   ```bash
   gh auth login
   ```

3. Bu proje klasöründe:

   ```bash
   ./scripts/publish.sh
   ```

Betik önce `gh` oturumunu ve hedef isim çakışmasını kontrol eder, yerel git deposu yoksa oluşturur, dosyaları commit eder ve `Mert-Oezdemir/claude-code-5-skills-tr` adıyla **public** GitHub deposu oluşturup `main` dalına push eder. GitHub üzerinde hâlihazırda bu isimde depo varsa otomatik üzerine yazmaz.

## Manuel yöntem

```bash
git init -b main
git add .
git commit -m "docs: add original Turkish Claude Code skills guide"
gh repo create Mert-Oezdemir/claude-code-5-skills-tr --public --source=. --remote=origin --push
```

> `.git` klasörüyle hazırlanmış bir kopyada `git init` gerekli değildir. Arşiv içeriği zaten bir Git deposuysa mevcut tarihle devam edin.

## Yayımladıktan sonra

Depoda GitHub'ın **Public** görünürlüğünü ve lisans açıklamasının yalnızca kendi özgün içeriğini kapsadığını kontrol edin. Dış bağlantıların güncelliğini gözden geçirin.