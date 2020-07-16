# Gcc and Objdump experiment

เพื่อทดสอบว่าภาษาซี เมื่อแปลงเป็น assembly แล้วจะมีหน้าตาเป็นอย่างไร 

อ้างอิงจากบทความ [A simple example with gcc and objdump](https://tuttlem.github.io/2015/01/12/a-simple-example-with-gcc-and-objdump.html)

## สิ่งที่ท่านต้องมี

* Ubuntu Linux หรือ อื่นๆ แล้วแต่สะดวก ผมทดสอบบน Windows Subsystem for Linux บน Windows 10
* gcc
* objdump

## วิธีรันคำสั่ง

เหมือนใช้ shell script ทั่วไปเลย

```
bash compile_all.sh
```

## อธิบายคำสั่ง

```
gcc -g -o inline.o inline.c
```

-g คือใส่ข้อมูล debug เข้ามาด้วย

-o ก็ออกผลลัพธ์เป็น object file ทั่วไปของภาษา C

```
objdump -d -M intel -S inline.o > inline_result.txt
```
-d คือใส่ debug information มาให้ดูด้วย

-M คือ ให้พิมพ์ Assembly ที่เป็น Intel Syntax เพราะผู้ทดสอบถนัด syntax นี้ เพราะผมเคยเรียนจาก nasm มาก่อน ถ้าเป็น AT&T syntax ซึ่งเป็นค่า default ผมอ่านไม่ถนัด

-S คือระบุ object file ที่ต้องการ dump

redirect output to inline_result.txt คือ ปริ้นท์ผลลัพธ์ลงไฟล์ inline_result.txt

ดูผลลัพธ์หลักๆ ที่ main ครับ ส่วนอื่นอ่านแล้วงงก็อย่าไปดู

เท่านี้ครับ หวังว่าจะมีประโยชน์ไม่มากก็น้อย 

ขอบคุณที่สนใจครับ
