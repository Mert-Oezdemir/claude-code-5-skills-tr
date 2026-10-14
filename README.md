# Claude Code için 5 skill: Türkçe başlangıç rehberi

Claude Code kullananlar için **skill keşfi, geliştirme akışı, oturum hafızası, arayüz tasarımı ve kişiselleştirme** konularına odaklanan bağımsız bir kaynak listesi.

> **Kapsam:** Bu depo herhangi bir üçüncü taraf skill'i dağıtmaz, onların kodunu içermez ve tek komutla hepsini kuran bir betik sunmaz. Bağlantılar doğrudan proje sahiplerine gider. Komutları çalıştırmadan önce ilgili depoyu ve istenen izinleri inceleyin.
>
> **Güncellik:** Proje bağlantıları ve kurulum adımları 14 Ekim 2026 itibarıyla kontrol edildi; daha sonraki değişiklikler için her zaman kaynak deponun README dosyasını esas alın.

## Hızlı karşılaştırma

| Araç | Kullanım amacı | Kaynak | Lisans (kaynak depoda) | Durum |
| --- | --- | --- | --- | --- |
| **find-skills** | Yeni skill'leri bulma ve ekleme | [vercel-labs/skills](https://github.com/vercel-labs/skills) | MIT | Bağlantı doğrulandı |
| **Superpowers** | Tasarım, planlama, test ve uygulama akışı | [obra/superpowers](https://github.com/obra/superpowers) | MIT | Bağlantı doğrulandı |
| **Claude-Mem** | Oturumlar arası bağlamı saklama ve hatırlatma | [thedotmack/claude-mem](https://github.com/thedotmack/claude-mem) | Apache-2.0 | Bağlantı doğrulandı |
| **Impeccable** | Ürün ve arayüz tasarımı için yönergeler ve denetimler | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) | Apache-2.0 | Bağlantı doğrulandı |
| **Observer (genel ad)** | Kullanım tercihlerini öğrenen yardımcı araçlar | Tekil resmî kaynak belirlenmedi | **Belirsiz** | **Paket seçilmeden kurulmaz** |

## Kurulum: İhtiyacın olanı seç

### 1. find-skills — yeni yetenekleri keşfet

Proje klasöründe terminale şunu yaz:

```bash
npx skills add vercel-labs/skills --skill find-skills
```

Bu komut yalnızca `find-skills` skill'ini hedefler. Sonrasında arama yapmak için:

```bash
npx skills find testing
```

Kaynak: [Vercel Labs Skills](https://github.com/vercel-labs/skills).

### 2. Superpowers — önce ne yapılacağını netleştir

**Claude Code'un komut alanında** (sistem terminalinde değil):

```text
/plugin install superpowers@claude-plugins-official
```

Bu araç, gereksinimleri belirleme, uygulama planı hazırlama ve kodu gözden geçirme aşamalarını düzenleyen bir çalışma yöntemi sunar. Kaynak: [Superpowers](https://github.com/obra/superpowers).

### 3. Claude-Mem — oturumlar arasında bağlam

Sistem terminalinde:

```bash
npx claude-mem install
```

Veya Claude Code'un komut alanında:

```text
/plugin marketplace add thedotmack/claude-mem
/plugin install claude-mem
```

Kurulumdan sonra Claude Code'u yeniden başlatmak gerekebilir. **Önemli:** Bu yazılım oturum verileri ile çalışır. Güncel kurulum akışı hesap oturumu açma ve bellek sağlayıcısı seçme adımları içerebilir. Gizlilik koşullarını, veri saklamayı ve olası ücretleri incelemeden etkinleştirmeyin. Kaynak: [Claude-Mem](https://github.com/thedotmack/claude-mem).

### 4. Impeccable — tasarım yönergeleri

Proje klasöründe sistem terminali:

```bash
npx impeccable install
```

Kurulum tamamlandıktan sonra desteklenen AI kodlama aracının komut alanında:

```text
/impeccable init
```

Bu ilk yapılandırma projenin hedeflerini ve tasarım kararlarını kaydetmeye yardımcı olur. Kurucu, kullanılan araca göre dosya ve hook ekleyebilir; değişiklikleri inceleyin. Kaynak: [Impeccable](https://github.com/pbakaus/impeccable).

### 5. Observer — isim benzerliğine dikkat

"Observer" adı tek başına güvenli bir paket tanımlamaz. Yalnızca *arama* yapın:

```bash
npx skills find observer
```

Bulduğunuz sonuçların yayımlayıcısını, `SKILL.md` içeriğini, lisansını, güncellenme geçmişini ve hangi verileri okuduğunu karşılaştırın. **Belirli bir depo güvenilir biçimde doğrulanmadan kurulum komutu önermiyoruz.**

## Kime ne önerilir?

- **Yeni başlayanlar:** İlk olarak `find-skills`; büyük bir geliştirme işi varsa `Superpowers`.
- **Arayüz geliştirenler:** `Impeccable`, fakat mevcut tasarım sistemiyle uyumluluğunu kontrol edin.
- **Çok sayıda oturumla çalışanlar:** `Claude-Mem`, gizlilik ve veri saklama gereksinimleri karşılanıyorsa.
- **Tercihleri otomatik öğrenen araç isteyenler:** Önce somut paketi ve izinlerini doğrulayın; isim bazında kurmayın.

## Kurulum öncesi kontrol listesi

- [ ] Bağlantı orijinal geliştiricinin deposuna gidiyor.
- [ ] README, lisans ve sürüm/güncelleme geçmişi incelendi.
- [ ] Kurulumun çalıştıracağı hook'lar, komutlar ve dosya erişimleri anlaşıldı.
- [ ] API anahtarları, müşteri verileri ve sohbet kayıtları için saklama politikası kontrol edildi.
- [ ] Geri alma veya kaldırma yolu belirlendi.

## Lisans ve kaynak şeffaflığı

Bu depodaki **özgün derleme metni ve yardımcı dosyalar** [MIT lisansı](LICENSE) altındadır. Bu lisans, tabloda anılan üçüncü taraf projelerin lisanslarını **değiştirmez** ve onlara ait kodu burada yeniden lisanslamaz. Proje adı ve marka adları ilgili sahiplerine aittir. Ayrıntılar: [THIRD_PARTY.md](THIRD_PARTY.md).

Bu rehberin fikrî çıkış noktalarından biri Burhan Kocabiyik tarafından paylaşılan beş araçlık listedir. **Söz konusu yayının metni, görselleri ve sayfa tasarımı bu depoya kopyalanmamıştır.** Buradaki açıklamalar bağımsız olarak yazılmış, teknik bilgiler projelerin resmî kaynaklarıyla karşılaştırılmıştır. Orijinal yayının telif hakları sahibine aittir.

Bu bağımsız bir topluluk rehberidir; Anthropic, Vercel veya yukarıdaki proje sahiplerince hazırlanmış/onaylanmış resmî bir kaynak değildir.

Katkı ve düzeltmeler için [CONTRIBUTING.md](CONTRIBUTING.md) dosyasına bakın.