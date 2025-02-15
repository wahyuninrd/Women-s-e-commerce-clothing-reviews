# Final Submission: Proyek Pengembangan dan Pengoperasian Sistem Machine Learning
Nama: Wahyuni Nur Rahima Diyana

Username dicoding: wahyuninrd

| | Deskripsi |
| ----------- | ----------- |
| Dataset | _Women's e-commerce clothing reviews_ |
| Masalah | Proyek ini menghadapi tantangan dalam mengelola ulasan produk pakaian wanita dari pelanggan di _e-commerce_. Masalah utamanya adalah bagaimana mengelompokkan kategori suatu produk direkomendasikan oleh pelanggan atau tidak. Dataset yang digunakan terdiri dari dua atribut yaitu recommended_ind dan review_text. Review_text berisi komentar pelanggan mengenai produk yang dibeli. Sedangkan recommended_ind berisi kategori yang menunjukkan apakah produk tersebut direkomendasikan pelanggan atau tidak. |
| Solusi machine learning | Mengembangkan model yang dapat memberikan manfaat kepada pengguna agar dapat memberikan informasi yang lebih cepat dan tepat mengenai penilaian pelanggan terhadap produk pakaian wanita. Bagi _stakeholder_, solusi ini dapat membantu memahami opini pelanggan secara menyeluruh sehingga dapat meningkatkan kualitas produk dan layanan mereka. |
| Metode pengolahan | Metode pengolahan data diawali dengan melakukan pengambilan dataset ulasan produk pakaian wanita. Selanjutnya, dilakukan penghapusan data yang tidak relevan dan bernilai kosong. Lalu data diimpor ke dalam lingkungan kerja dan dilakukan tahap pemrosesan yaitu _lowercase_ yang bertujuan mengubah teks menjadi huruf kecil agar data menjadi seragam. |
| Arsitektur model | Arsitektur model yang digunakan adalah model neural network yang dapat melakukan prediksi suatu produk direkomendasikan atau tidak. Arsitektur ini terdiri dari _input layer_, _reshape layer_, _text vectorization layer_, _embedding layer_, _global average pooling 1d layer_, dan _dense layer_.  |
| Metrik evaluasi | Metrik yang digunakan untuk mengevaluasi performa model yaitu _examplecount_, _AUC_, _False Positive_, _false Negative_,_True Negative_, _True Positive_, dan _Binary Accuracy_ |
| Performa model | Hasil evaluasi model ini pada 189 sampel menunjukkan nilai AUC sebesar 0.837, _Binary Accuracy_ 0.847,  _False Negative_ 5, _False Positive_ 24, _loss_ 0.912, _True Negative_ 14, _True Positive_ 146. Adapun nilai val_binary_acc tertinggi yaitu sebesar 0.8675. Hasil ini menunjukkan bahwa model telah memiliki kemampuan yang baik dalam melakukan klasifikasi mengenai ulasan produk pakaian wanita. |
| Opsi deployment | Sistem ini di deploy menggunakan cloudeka |
| Web app | http://103.190.215.173:8501/v1/models/clothing-model/metadata|
| Monitoring | Pada sistem ini monitoring dilakukan menggunakan prometheus dan grafana. Monintoring dilakukan pada Runtime usecs yang menunjukkan waktu eksekusi sebesar 22243 mikrodetik. |