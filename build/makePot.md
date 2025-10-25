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
**Adlandırarak çalıştır:**

```
podman run --name gimp-help gimp-help
```

**Varsa çalışan sürümle değiştirmek:**

```
podman run --replace --name gimp-help gimp-help
```

**Çalışıyor mu bakalım**

```
podman ps -a
```

**Dosyaları yerele alalım**

```
podman cp gimp-help:/workspace/_html1 ./build-dir/_html1
podman cp gimp-help:/workspace/_pdf1 ./build-dir/_pdf1
podman cp gimp-help:/workspace/_install ./build-dir/_install
podman cp gimp-help:/workspace/_pot ./build-dir/_pot
```

**İmajı silmek istersen:**

```
podman rmi gimp-help
podman rmi -f gimp-help:latest 
```

