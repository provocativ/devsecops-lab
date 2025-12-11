#!/bin/bash
TARIH=$(date "+%Y-%m-%d %H:%M")

# DİKKAT: $USER yerine 'provocativo' yazdık ve 'Desktop' (Büyük D) kullandık.
LOG_DOSYASI="/home/provocativo/Desktop/devsecops_lab/tarama_sonuclari.log"

echo "--------------------------------------" >> $LOG_DOSYASI
echo "Tarama Başladı: $TARIH" >> $LOG_DOSYASI

# Burada da tam adresi elle yazdık
python3 /home/provocativo/Desktop/devsecops_lab/port_tarayici.py >> $LOG_DOSYASI 2>&1

echo "" >> $LOG_DOSYASI
echo "Tarama Bitti." >> $LOG_DOSYASI
