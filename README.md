Bu projedeki veri tabanı bağlantısını ve veri tabanı işlemlerini xml web servis kullanarak yaptım. Projeyi çalıştırmak için github sayfamda paylaştığım WebForm XML Servis
projesini çalıştırmak gerekiyor.

Proje çalıştırılınca ilk olarak kullanıcı giriş formu açılır. Bu formda girdiğimiz kullanıcı adı ve şifre bilgileri eşleşiyormu, giriş yapan kullanıcı yetkili kullanıcı 
mı yoksa yetkili olmayan bir kullanıcımı kontrolü yapılır ve ona göre yönlendirilir.

![image](https://user-images.githubusercontent.com/96024765/185158603-df3ba82b-934e-4dd2-b1b0-9c15b97e1b1b.png)         

Giriş yapan kullanıcı yetkili bir kullanıcı ise aşağıdaki forma yönlendirilir. Burada sisteme giriş kısmından sisteme giriş yapabilir ve kullanıcı işlemleri kısmından 
yeni bir kullanıcı eklenebilir.

![image](https://user-images.githubusercontent.com/96024765/185158914-75c1e941-b780-4b65-b62e-84fed0ed62bd.png)

Yetkili Kullanıcı formundan kullanıcı işlemlerine tıkladığımızda aşağıdaki forma yönlendirilir ve bu formda yeni kullanıcı ekleme işlemi yapılır.

![image](https://user-images.githubusercontent.com/96024765/185159081-874a13cd-d6a7-4d6d-95fd-28621b9026a0.png)

Yetkili kullanıcı formundan sisteme girişe tıkladığımızda aşağıdaki forma yönlendirilir. Giriş yapan kullanıcı yetkili değilse direk aşağıdaki form açılır. Bu form veri 
tabanı işlemlerinin yapıldığı form.

![image](https://user-images.githubusercontent.com/96024765/185159347-313a4cc9-d607-49a2-a053-62a5ddf6869b.png)

