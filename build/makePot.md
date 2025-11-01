chatGPT ve deneme yanılma ile hazırlanmıştır.

Bu çalışma 2 dosyayı içermektedir

- Containerfile
- makePot.md.md

### Containerfile

Bu dosya imajı oluşturmak için gereken sanallaştırma talimatlarını tutuyor.

gimp-help sitesindeki gitlab.yml dosyası kullanılarak oluşturulmuştur.

### makePot.md.md

Bu dosya podman ve kullanımı hakkında bilgileri tutuyor.

### İlk önce

İlk önce **Containerfile** dosyasını gimp-help içine taşıyoruz.

Sonrasında aşağıdaki talimatları izliyoruz.

### Kurulum ve Kullanım Talimatları

**İmajı oluştur (dikkat sonunda nokta var):**

```
podman build -t gimp-help .
```

**Varsa çalışan sürümle değiştirerek adlandırıp çalışmak:**

```
podman run --replace --name gimp-help gimp-help
```

**Çalışıyor mu bakalım**

```
podman ps -a
```

**Dosyaları yerele alalım**

```
podman cp gimp-help:/workspace/_html1 ./html/
podman cp gimp-help:/workspace/_pot ./html/
podman cp gimp-help:/workspace/_pdf1 ./html/
podman cp gimp-help:/workspace/_install ./html/
```

**İmajı silmek istersen:**

```
podman rmi gimp-help
podman rmi -f gimp-help:latest 
```

