# Firebase Custom Notification Sound Example
# Firebase Özel Bildirim Sesi Ayarlama Örneği

Android klasörü altında res->raw->sound.mp3 Ekleyin.
İOS tarafında wav dosyası olarak Add files to "Runner" ile dosyayı ekle.

https://fcm.googleapis.com/fcm/send (POST)
Firebase'e Body kısmına aşağıdakini yapıştır. Token'ı ekle.
Header kısmına 
  KEY : Authorization
  VALUE : key=SenderKey

{
 "to" : "<<token>>",
 "collapse_key" : "type_a",
  "android_channel_id":"notification_channel_id",
 "notification" : {
     "body" : "Body of Your Notification",
     "title": "Title of Your Notification",
      "sound":"custom.wav"
 },
 "data" : {
     "body" : "Body of Your Notification in Data",
     "title": "Title of Your Notification in Title",
     "sound":"custom.wav"
 }
}

  Burada dikkat edilmesi gereken bir konu android de sesi değiştirdiğin kanalı doğru girmen gerekiyor. Yani android_channel_id kısmına senin bildirim kanal ismini doğru girmen gerekiyor. Kod kısmında channel nasıl ekleniyor görebilirsiniz.
